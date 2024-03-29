# CLD900

## Exercise 4 - Create the iFlow Purchase Order

```
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">
   <soapenv:Header/>
   <soapenv:Body>
      <feed>4500000011</feed>
   </soapenv:Body>
</soapenv:Envelope>
```

## Exercise 6 - Consume the Purchase Order API from SAP API Business Hub

```
https://sandbox.api.sap.com/s4hanacloud/sap/opu/odata/sap/API_PURCHASEORDER_PROCESS_SRV/A_PurchaseOrder?$select=PurchaseOrder,CompanyCode,PurchaseOrderType,PurchasingDocumentDeletionCode,PurchasingProcessingStatus,CreatedByUser,CreationDate,LastChangeDateTime,Supplier,PurchaseOrderSubtype,Language,PaymentTerms,CashDiscount1Days,CashDiscount2Days,NetPaymentDays,CashDiscount1Percent,CashDiscount2Percent,PurchasingOrganization,PurchasingDocumentOrigin,PurchasingGroup,PurchaseOrderDate,DocumentCurrency,ExchangeRate,ExchangeRateIsFixed,ValidityStartDate,ValidityEndDate,SupplierQuotationExternalID,SupplierRespSalesPersonName,SupplierPhoneNumber,SupplyingSupplier,SupplyingPlant,IncotermsClassification,CorrespncExternalReference,CorrespncInternalReference,InvoicingParty,ReleaseIsNotCompleted,PurchasingCompletenessStatus,IncotermsVersion,IncotermsLocation1,IncotermsLocation2,ManualSupplierAddressID,IsEndOfPurposeBlocked,AddressCityName,AddressFaxNumber,AddressHouseNumber,AddressName,AddressPostalCode,AddressStreetName,AddressPhoneNumber,AddressRegion,AddressCountry,AddressCorrespondenceLanguage&$filter=PurchaseOrder eq '4500000011'
```

## Exercise 10 - Clean Up Message Data

```
xmlns:ns1=http://sap.com/xi/EDI
```
```
<soap:Envelope xmlns:soap="http://www.w3.org/2001/12/soap-envelope" soap:encodingStyle="http://www.w3.org/2001/12/soap-encoding">
   <soap:Body xmlns:m="http://www.example.org/PurchaseOrder">
      <m:Contents>${in.body}</m:Contents>
   </soap:Body>
</soap:Envelope> 
```

## Exercise 12 - Build a Second iFlow for Internal Notification

```
{ 
  "text": "Message successful processed with Purchase Order ID: ${property.poid}" 
}
```
