# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [callback_api.proto](#callback_api-proto)
    - [NewEventRequest](#callbackevents-NewEventRequest)
    - [NewEventResponse](#callbackevents-NewEventResponse)
  
    - [CallbackAPI](#callbackevents-CallbackAPI)
  
- [callback_common.proto](#callback_common-proto)
    - [EventType](#callbackevents-EventType)
  
- [callback_order_events.proto](#callback_order_events-proto)
    - [BcTxIdentity](#callbackevents-BcTxIdentity)
    - [BcTxInfo](#callbackevents-BcTxInfo)
    - [BcTxInfo.OperationsEntry](#callbackevents-BcTxInfo-OperationsEntry)
    - [BcTxOperation](#callbackevents-BcTxOperation)
    - [CurrencyIdentity](#callbackevents-CurrencyIdentity)
    - [CurrencyInfo](#callbackevents-CurrencyInfo)
    - [EstimationFeeIdentify](#callbackevents-EstimationFeeIdentify)
    - [EstimationFeeUnitIdentify](#callbackevents-EstimationFeeUnitIdentify)
    - [OperationsList](#callbackevents-OperationsList)
    - [Order](#callbackevents-Order)
    - [OrderEvent](#callbackevents-OrderEvent)
    - [OrderIdentity](#callbackevents-OrderIdentity)
    - [OwnerWalletInfo](#callbackevents-OwnerWalletInfo)
  
    - [BcTxStatus](#callbackevents-BcTxStatus)
    - [OperationType](#callbackevents-OperationType)
    - [OrderStatus](#callbackevents-OrderStatus)
    - [OrderType](#callbackevents-OrderType)
  
- [Scalar Value Types](#scalar-value-types)



<a name="callback_api-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## callback_api.proto



<a name="callbackevents-NewEventRequest"></a>

### NewEventRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| event_type | [EventType](#callbackevents-EventType) |  |  |
| order_event | [OrderEvent](#callbackevents-OrderEvent) |  |  |






<a name="callbackevents-NewEventResponse"></a>

### NewEventResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| event_type | [EventType](#callbackevents-EventType) |  |  |
| EventIdentity | [string](#string) |  |  |





 

 

 


<a name="callbackevents-CallbackAPI"></a>

### CallbackAPI
Merchant RPC api gateway

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| NewEvent | [NewEventRequest](#callbackevents-NewEventRequest) | [NewEventResponse](#callbackevents-NewEventResponse) |  |

 



<a name="callback_common-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## callback_common.proto


 


<a name="callbackevents-EventType"></a>

### EventType


| Name | Number | Description |
| ---- | ------ | ----------- |
| PLACEHOLDER_EVENT_TYPE | 0 |  |
| EVENT_TYPE_ORDER | 1 |  |


 

 

 



<a name="callback_order_events-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## callback_order_events.proto



<a name="callbackevents-BcTxIdentity"></a>

### BcTxIdentity



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| TxID | [string](#string) |  |  |
| Meta | [bytes](#bytes) |  |  |






<a name="callbackevents-BcTxInfo"></a>

### BcTxInfo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| NetworkIdentifier | [uint32](#uint32) |  |  |
| BcTxIdentifier | [BcTxIdentity](#callbackevents-BcTxIdentity) |  |  |
| Confirmations | [uint64](#uint64) |  |  |
| BlockNumber | [uint64](#uint64) |  |  |
| Operations | [BcTxInfo.OperationsEntry](#callbackevents-BcTxInfo-OperationsEntry) | repeated |  |
| Status | [BcTxStatus](#callbackevents-BcTxStatus) |  |  |
| RealFee | [uint64](#uint64) |  |  |
| ExplorerURL | [string](#string) |  |  |






<a name="callbackevents-BcTxInfo-OperationsEntry"></a>

### BcTxInfo.OperationsEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [OperationsList](#callbackevents-OperationsList) |  |  |






<a name="callbackevents-BcTxOperation"></a>

### BcTxOperation



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| Index | [uint32](#uint32) |  |  |
| Address | [string](#string) |  |  |
| Amount | [uint64](#uint64) |  |  |
| CurrencyInfo | [CurrencyInfo](#callbackevents-CurrencyInfo) |  |  |






<a name="callbackevents-CurrencyIdentity"></a>

### CurrencyIdentity



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| UUID | [string](#string) |  |  |






<a name="callbackevents-CurrencyInfo"></a>

### CurrencyInfo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| Identifier | [CurrencyIdentity](#callbackevents-CurrencyIdentity) |  |  |
| Symbol | [string](#string) |  |  |
| Decimals | [uint32](#uint32) |  |  |






<a name="callbackevents-EstimationFeeIdentify"></a>

### EstimationFeeIdentify



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| UUID | [string](#string) |  |  |






<a name="callbackevents-EstimationFeeUnitIdentify"></a>

### EstimationFeeUnitIdentify



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| UUID | [string](#string) |  |  |






<a name="callbackevents-OperationsList"></a>

### OperationsList



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| Operations | [BcTxOperation](#callbackevents-BcTxOperation) | repeated |  |






<a name="callbackevents-Order"></a>

### Order



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| OrderIdentifier | [OrderIdentity](#callbackevents-OrderIdentity) |  |  |
| Type | [OrderType](#callbackevents-OrderType) |  |  |
| Status | [OrderStatus](#callbackevents-OrderStatus) |  |  |
| NetworkIdentifier | [uint32](#uint32) |  |  |
| ProviderIdentifier | [uint32](#uint32) |  |  |
| MerchantIdentifier | [string](#string) |  |  |
| AddressIdentifier | [string](#string) |  |  |
| Amount | [uint64](#uint64) |  |  |
| RealFee | [uint64](#uint64) |  |  |
| EstimationFeeUnitIdentifier | [EstimationFeeUnitIdentify](#callbackevents-EstimationFeeUnitIdentify) |  |  |
| OwnerWallet | [OwnerWalletInfo](#callbackevents-OwnerWalletInfo) |  |  |
| CurrencyIdentifier | [CurrencyIdentity](#callbackevents-CurrencyIdentity) |  |  |
| BcTx | [BcTxInfo](#callbackevents-BcTxInfo) | repeated |  |






<a name="callbackevents-OrderEvent"></a>

### OrderEvent



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| EventIdentity | [string](#string) |  |  |
| NetworkIdentifier | [uint32](#uint32) |  |  |
| ProviderIdentifier | [uint32](#uint32) |  |  |
| MerchantIdentifier | [string](#string) |  |  |
| OrderIdentifier | [string](#string) |  |  |
| Type | [string](#string) |  |  |
| Producer | [string](#string) |  |  |
| Message | [string](#string) |  |  |
| OrderInfo | [Order](#callbackevents-Order) |  |  |






<a name="callbackevents-OrderIdentity"></a>

### OrderIdentity



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| UUID | [string](#string) |  |  |
| ExternalOrderUUID | [string](#string) |  |  |
| ProviderOrderUUID | [string](#string) |  |  |






<a name="callbackevents-OwnerWalletInfo"></a>

### OwnerWalletInfo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| WalletUUID | [string](#string) |  |  |
| AccountUUID | [string](#string) |  |  |





 


<a name="callbackevents-BcTxStatus"></a>

### BcTxStatus


| Name | Number | Description |
| ---- | ------ | ----------- |
| PLACEHOLDER_BC_TX_STATUS | 0 |  |
| BC_TX_IN_MINING | 1 |  |
| BC_TX_SUCCESS | 2 |  |
| BC_TX_EXECUTION_FAILED | 3 |  |
| BC_TX_WAITING_FOR_CONFIRMATIONS | 4 |  |



<a name="callbackevents-OperationType"></a>

### OperationType


| Name | Number | Description |
| ---- | ------ | ----------- |
| OPERATION_TYPE_PLACEHOLDER | 0 |  |
| OPERATION_TYPE_SPENT | 1 |  |
| OPERATION_TYPE_RECEIVE | 2 |  |
| OPERATION_TYPE_FEE | 3 |  |



<a name="callbackevents-OrderStatus"></a>

### OrderStatus


| Name | Number | Description |
| ---- | ------ | ----------- |
| PLACEHOLDER_ORDER_STATUS | 0 |  |
| ACCEPTED | 1 |  |
| CREATED | 2 |  |
| PROCESSING | 3 |  |
| CONFIRMED | 4 |  |
| FAILED | 5 |  |
| SUCCESS | 6 |  |
| CANCELED | 7 |  |



<a name="callbackevents-OrderType"></a>

### OrderType


| Name | Number | Description |
| ---- | ------ | ----------- |
| PLACEHOLDER_ORDER_TYPE | 0 |  |
| WITHDRAW | 1 |  |
| DEPOSIT | 2 |  |


 

 

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

