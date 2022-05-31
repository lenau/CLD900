# CLD900

```
https://sandbox.api.sap.com/s4hanacloud/sap/opu/odata/sap/API_PURCHASEORDER_PROCESS_SRV/A_PurchaseOrder?$select=PurchaseOrder,CompanyCode,PurchaseOrderType,PurchasingDocumentDeletionCode,PurchasingProcessingStatus,CreatedByUser,CreationDate,LastChangeDateTime,Supplier,PurchaseOrderSubtype,Language,PaymentTerms,CashDiscount1Days,CashDiscount2Days,NetPaymentDays,CashDiscount1Percent,CashDiscount2Percent,PurchasingOrganization,PurchasingDocumentOrigin,PurchasingGroup,PurchaseOrderDate,DocumentCurrency,ExchangeRate,ExchangeRateIsFixed,ValidityStartDate,ValidityEndDate,SupplierQuotationExternalID,SupplierRespSalesPersonName,SupplierPhoneNumber,SupplyingSupplier,SupplyingPlant,IncotermsClassification,CorrespncExternalReference,CorrespncInternalReference,InvoicingParty,ReleaseIsNotCompleted,PurchasingCompletenessStatus,IncotermsVersion,IncotermsLocation1,IncotermsLocation2,ManualSupplierAddressID,IsEndOfPurposeBlocked,AddressCityName,AddressFaxNumber,AddressHouseNumber,AddressName,AddressPostalCode,AddressStreetName,AddressPhoneNumber,AddressRegion,AddressCountry,AddressCorrespondenceLanguage&$filter=PurchaseOrder eq '4500000011'

<soap:Envelope xmlns:soap="http://www.w3.org/2001/12/soap-envelope" soap:encodingStyle="http://www.w3.org/2001/12/soap-encoding">
   <soap:Body xmlns:m="http://www.example.org/PurchaseOrder">
      <m:Contents>${in.body}</m:Contents>
   </soap:Body>
</soap:Envelope> 
````
