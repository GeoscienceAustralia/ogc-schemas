var OSEO_1_0_Module_Factory = function () {
  var OSEO_1_0 = {
    n: 'OSEO_1_0',
    dens: 'http:\/\/www.opengis.net\/oseo\/1.0',
    deps: ['OWS_2_0', 'SWES_2_0', 'SWE_2_0'],
    tis: [{
        ln: 'OrderingServiceContentsType',
        ps: [{
            n: 'productOrders',
            rq: true,
            en: 'ProductOrders',
            ti: '.OrderingServiceContentsType.ProductOrders'
          }, {
            n: 'subscriptionOrders',
            rq: true,
            en: 'SubscriptionOrders',
            ti: '.OrderingServiceContentsType.SubscriptionOrders'
          }, {
            n: 'programmingOrders',
            rq: true,
            en: 'ProgrammingOrders',
            ti: '.OrderingServiceContentsType.ProgrammingOrders'
          }, {
            n: 'getQuotationCapabilities',
            rq: true,
            en: 'GetQuotationCapabilities',
            ti: '.OrderingServiceContentsType.GetQuotationCapabilities'
          }, {
            n: 'submitCapabilities',
            rq: true,
            en: 'SubmitCapabilities',
            ti: '.OrderingServiceContentsType.SubmitCapabilities'
          }, {
            n: 'getStatusCapabilities',
            rq: true,
            en: 'GetStatusCapabilities',
            ti: '.OrderingServiceContentsType.GetStatusCapabilities'
          }, {
            n: 'describeResultAccessCapabilities',
            rq: true,
            en: 'DescribeResultAccessCapabilities',
            ti: '.OrderingServiceContentsType.DescribeResultAccessCapabilities'
          }, {
            n: 'cancelCapabilities',
            rq: true,
            en: 'CancelCapabilities',
            ti: '.OrderingServiceContentsType.CancelCapabilities'
          }, {
            n: 'supportedCollection',
            mno: 0,
            col: true,
            en: 'SupportedCollection',
            ti: '.CollectionCapability'
          }, {
            n: 'contentsType',
            mno: 0,
            col: true,
            en: 'ContentsType',
            ti: '.EncodingType'
          }]
      }, {
        ln: 'DeliveryAddressType.PostalAddress',
        tn: null,
        ps: [{
            n: 'streetAddress',
            rq: true
          }, {
            n: 'city',
            rq: true
          }, {
            n: 'state',
            rq: true
          }, {
            n: 'postalCode',
            rq: true
          }, {
            n: 'country',
            rq: true
          }, {
            n: 'postBox'
          }]
      }, {
        ln: 'CancelRequestAckType',
        bti: '.OrderResponseBaseType'
      }, {
        ln: 'CommonOrderItemType.SceneSelection',
        tn: null,
        ps: [{
            n: 'parameterData',
            rq: true,
            en: 'ParameterData',
            ti: '.ParameterDataType'
          }]
      }, {
        ln: 'TaskingRequestIdType',
        bti: '.OrderItemIdType',
        ps: [{
            n: 'id',
            rq: true,
            en: 'ID'
          }]
      }, {
        ln: 'CreditCardInfoType',
        ps: [{
            n: 'creditCardInstitute',
            rq: true,
            ti: 'AnyType'
          }, {
            n: 'nameOnCard',
            rq: true,
            ti: 'AnyType'
          }, {
            n: 'cardNumber',
            rq: true,
            ti: 'AnyType'
          }, {
            n: 'expirationDate',
            rq: true,
            ti: 'AnyType'
          }]
      }, {
        ln: 'OrderingServiceContentsType.GetStatusCapabilities',
        tn: null,
        ps: [{
            n: 'orderSearch',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'orderSearch'
            },
            t: 'a'
          }, {
            n: 'orderRetrieve',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'orderRetrieve'
            },
            t: 'a'
          }, {
            n: 'full',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'full'
            },
            t: 'a'
          }]
      }, {
        ln: 'OrderResponseBaseType',
        ps: [{
            n: 'status',
            rq: true
          }, {
            n: 'errorMessage'
          }]
      }, {
        ln: 'CommonOrderSpecification.Option',
        tn: null,
        ps: [{
            n: 'parameterData',
            rq: true,
            en: 'ParameterData',
            ti: '.ParameterDataType'
          }]
      }, {
        ln: 'DescribeResultAccessResponseType',
        bti: '.OrderResponseBaseType',
        ps: [{
            n: 'urLs',
            mno: 0,
            col: true,
            en: 'URLs',
            ti: '.ItemURLType'
          }]
      }, {
        ln: 'CommonOrderStatusItemType',
        bti: '.CommonOrderItemType',
        ps: [{
            n: 'orderItemStatusInfo',
            rq: true,
            ti: '.StatusType'
          }]
      }, {
        ln: 'OrderOptionsResponseType',
        bti: '.OrderResponseBaseType',
        ps: [{
            n: 'orderOptions',
            mno: 0,
            col: true,
            ti: '.CommonOrderOptionsType'
          }]
      }, {
        ln: 'PaymentOptionSelectedValue',
        ps: [{
            n: 'paymentMethod',
            rq: true
          }, {
            n: 'orderAccount'
          }, {
            n: 'creditCardInfo'
          }]
      }, {
        ln: 'ParameterDescriptorType',
        bti: 'SWE_2_0.AbstractDataComponentPropertyType',
        ps: [{
            n: 'grouping'
          }]
      }, {
        ln: 'CommonOrderOptionsType.ProductDeliveryOptions',
        tn: null,
        ps: [{
            n: 'onlineDataAccess',
            rq: true,
            ti: '.CommonOrderOptionsType.ProductDeliveryOptions.OnlineDataAccess'
          }, {
            n: 'onlineDataDelivery',
            rq: true,
            ti: '.CommonOrderOptionsType.ProductDeliveryOptions.OnlineDataDelivery'
          }, {
            n: 'mediaDelivery',
            rq: true,
            ti: '.CommonOrderOptionsType.ProductDeliveryOptions.MediaDelivery'
          }]
      }, {
        ln: 'GetQuotationRequestType',
        bti: '.OrderRequestBaseType',
        ps: [{
            n: 'timeStamp',
            ti: 'Calendar'
          }, {
            n: 'orderSpecification',
            rq: true,
            ti: '.OrderSpecification'
          }, {
            n: 'quotationId',
            rq: true
          }]
      }, {
        ln: 'OrderingServiceContentsType.GetQuotationCapabilities',
        tn: null,
        ps: [{
            n: 'supported',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'supported'
            },
            t: 'a'
          }, {
            n: 'synchronous',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'synchronous'
            },
            t: 'a'
          }, {
            n: 'asynchronous',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'asynchronous'
            },
            t: 'a'
          }, {
            n: 'monitoring',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'monitoring'
            },
            t: 'a'
          }, {
            n: 'offLine',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'off-line'
            },
            t: 'a'
          }]
      }, {
        ln: 'SceneSelectionDescriptorType',
        bti: 'SWE_2_0.AbstractDataComponentPropertyType',
        ps: [{
            n: 'sceneRestriction',
            mno: 0,
            col: true,
            ti: '.SceneSelectionDescriptorType.SceneRestriction'
          }]
      }, {
        ln: 'OrderSpecification',
        bti: '.CommonOrderSpecification',
        ps: [{
            n: 'orderItem',
            rq: true,
            col: true,
            ti: '.CommonOrderItemType'
          }]
      }, {
        ln: 'GetCapabilities',
        tn: null,
        bti: 'OWS_2_0.GetCapabilitiesType',
        ps: [{
            n: 'service',
            rq: true,
            an: {
              lp: 'service'
            },
            t: 'a'
          }]
      }, {
        ln: 'OrderQuotation',
        ps: [{
            n: 'quotationId',
            rq: true
          }, {
            n: 'validityTime',
            ti: 'Calendar'
          }, {
            n: 'price',
            ti: '.CurrencyType'
          }, {
            n: 'orderItemGroupPrice',
            rq: true,
            col: true,
            ti: '.OrderItemGroupPrice'
          }, {
            n: 'contractInformation'
          }]
      }, {
        ln: 'DeliveryInformationType',
        ps: [{
            n: 'onlineAddress',
            mno: 0,
            col: true,
            ti: '.OnlineAddressType'
          }, {
            n: 'mailAddress',
            ti: '.DeliveryAddressType'
          }]
      }, {
        ln: 'CommonOrderMonitorSpecification',
        bti: '.CommonOrderSpecification',
        ps: [{
            n: 'orderId',
            rq: true
          }, {
            n: 'orderStatusInfo',
            rq: true,
            ti: '.StatusType'
          }, {
            n: 'orderDateTime',
            ti: 'Calendar'
          }, {
            n: 'orderItem',
            mno: 0,
            col: true,
            ti: '.CommonOrderStatusItemType'
          }]
      }, {
        ln: 'ItemURLType',
        ps: [{
            n: 'itemId',
            rq: true
          }, {
            n: 'productId',
            ti: '.ProductIdType'
          }, {
            n: 'itemAddress',
            rq: true,
            ti: '.OnLineAccessAddressType'
          }, {
            n: 'expirationDate',
            ti: 'Calendar'
          }]
      }, {
        ln: 'OrderingServiceContentsType.CancelCapabilities',
        tn: null,
        ps: [{
            n: 'supported',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'supported'
            },
            t: 'a'
          }, {
            n: 'asynchronous',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'asynchronous'
            },
            t: 'a'
          }]
      }, {
        ln: 'OrderOptionsRequestType',
        bti: '.OrderRequestBaseType',
        ps: [{
            n: 'timeStamp',
            ti: 'Calendar'
          }, {
            n: 'collectionId',
            rq: true
          }, {
            n: 'identifier',
            rq: true,
            col: true
          }, {
            n: 'taskingRequestId',
            rq: true,
            ti: '.TaskingRequestIdType'
          }]
      }, {
        ln: 'DeliveryOptionsType',
        ps: [{
            n: 'onlineDataAccess',
            rq: true,
            ti: '.DeliveryOptionsType.OnlineDataAccess'
          }, {
            n: 'onlineDataDelivery',
            rq: true,
            ti: '.DeliveryOptionsType.OnlineDataDelivery'
          }, {
            n: 'mediaDelivery',
            rq: true,
            ti: '.DeliveryOptionsType.MediaDelivery'
          }, {
            n: 'numberOfCopies',
            ti: 'Int'
          }, {
            n: 'productAnnotation'
          }, {
            n: 'specialInstructions'
          }]
      }, {
        ln: 'CommonOrderSpecification',
        ps: [{
            n: 'orderReference'
          }, {
            n: 'orderRemark'
          }, {
            n: 'deliveryInformation',
            ti: '.DeliveryInformationType'
          }, {
            n: 'invoiceAddress',
            ti: '.DeliveryAddressType'
          }, {
            n: 'packaging',
            mx: false,
            dom: false,
            t: 'er'
          }, {
            n: 'option',
            mno: 0,
            col: true,
            ti: '.CommonOrderSpecification.Option'
          }, {
            n: 'deliveryOptions',
            ti: '.DeliveryOptionsType'
          }, {
            n: 'priority'
          }, {
            n: 'orderType',
            rq: true
          }, {
            n: 'extension',
            mno: 0,
            col: true,
            ti: 'AnyType'
          }]
      }, {
        ln: 'StatusType',
        ps: [{
            n: 'status',
            rq: true
          }, {
            n: 'additionalStatusInfo'
          }, {
            n: 'missionSpecificStatusInfo'
          }]
      }, {
        ln: 'SubmitOrderResponseType',
        bti: '.OrderResponseBaseType',
        ps: [{
            n: 'orderId',
            rq: true
          }, {
            n: 'orderReference'
          }]
      }, {
        ln: 'DeliveryOptionsType.MediaDelivery',
        tn: null,
        ps: [{
            n: 'packageMedium',
            rq: true
          }, {
            n: 'shippingInstructions'
          }]
      }, {
        ln: 'StatusNotificationType',
        bti: '.OrderRequestBaseType',
        ps: [{
            n: 'timeStamp',
            ti: 'Calendar'
          }, {
            n: 'orderMonitorSpecification',
            rq: true,
            ti: '.CommonOrderMonitorSpecification'
          }]
      }, {
        ln: 'ProviderType',
        ps: [{
            n: 'serviceName',
            rq: true
          }, {
            n: 'organization',
            rq: true
          }]
      }, {
        ln: 'GetQuotationResponseRequestType',
        bti: '.OrderRequestBaseType',
        ps: [{
            n: 'status',
            rq: true
          }, {
            n: 'errorMessage'
          }, {
            n: 'quotation',
            rq: true,
            ti: '.OrderQuotation'
          }]
      }, {
        ln: 'CommonOrderOptionsType.SceneSelectionOption',
        tn: null,
        ps: [{
            n: 'name'
          }, {
            n: 'description'
          }, {
            n: 'sceneSelectionParameter',
            mno: 0,
            col: true,
            ti: '.SceneSelectionDescriptorType'
          }]
      }, {
        ln: 'Capabilities',
        tn: null,
        bti: 'OWS_2_0.CapabilitiesBaseType',
        ps: [{
            n: 'contents',
            en: 'Contents',
            ti: '.OrderingServiceContentsType'
          }, {
            n: 'notifications',
            en: 'Notifications',
            ti: 'SWES_2_0.NotificationProducerMetadataPropertyType'
          }]
      }, {
        ln: 'SceneSelectionDescriptorType.SceneRestriction',
        tn: null,
        bti: 'SWE_2_0.AbstractDataComponentPropertyType'
      }, {
        ln: 'SubmitOrderRequestType',
        bti: '.OrderRequestBaseType',
        ps: [{
            n: 'timeStamp',
            ti: 'Calendar'
          }, {
            n: 'orderSpecification',
            rq: true,
            ti: '.OrderSpecification'
          }, {
            n: 'quotationId',
            rq: true
          }, {
            n: 'statusNotification',
            rq: true
          }]
      }, {
        ln: 'OnLineAccessAddressType.ServiceAddress.InfoRequest',
        tn: null,
        ps: [{
            n: 'any',
            rq: true,
            dom: false,
            mx: false,
            t: 'ae'
          }]
      }, {
        ln: 'OrderingServiceContentsType.DescribeResultAccessCapabilities',
        tn: null,
        ps: [{
            n: 'supported',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'supported'
            },
            t: 'a'
          }]
      }, {
        ln: 'GetQuotationAckType',
        bti: '.OrderResponseBaseType',
        ps: [{
            n: 'quotationId',
            rq: true
          }, {
            n: 'quotation',
            rq: true,
            ti: '.OrderQuotation'
          }]
      }, {
        ln: 'DeliveryOptionsType.OnlineDataDelivery',
        tn: null,
        ps: [{
            n: 'protocol',
            rq: true
          }]
      }, {
        ln: 'DeliveryAddressType',
        ps: [{
            n: 'firstName'
          }, {
            n: 'lastName'
          }, {
            n: 'companyRef'
          }, {
            n: 'postalAddress',
            ti: '.DeliveryAddressType.PostalAddress'
          }, {
            n: 'telephoneNumber'
          }, {
            n: 'facsimileTelephoneNumber'
          }]
      }, {
        ln: 'CollectionCapability.CancelCapabilities',
        tn: null,
        ps: [{
            n: 'supported',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'supported'
            },
            t: 'a'
          }, {
            n: 'asynchronous',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'asynchronous'
            },
            t: 'a'
          }]
      }, {
        ln: 'PaymentOptionDefinitionType',
        ps: [{
            n: 'paymentMethod',
            rq: true
          }, {
            n: 'paymentOptionInfoURL'
          }]
      }, {
        ln: 'CancelRequestType',
        bti: '.OrderRequestBaseType',
        ps: [{
            n: 'timeStamp',
            ti: 'Calendar'
          }, {
            n: 'orderId',
            rq: true
          }, {
            n: 'statusNotification',
            rq: true
          }]
      }, {
        ln: 'OnLineAccessAddressType.ResourceAddress',
        tn: null,
        ps: [{
            n: 'url',
            rq: true,
            en: 'URL'
          }, {
            n: 'serviceRequest',
            ti: '.OnLineAccessAddressType.ResourceAddress.ServiceRequest'
          }]
      }, {
        ln: 'OnLineAccessAddressType.ResourceAddress.ServiceRequest',
        tn: null,
        ps: [{
            n: 'any',
            rq: true,
            dom: false,
            mx: false,
            t: 'ae'
          }]
      }, {
        ln: 'OrderItemIdType'
      }, {
        ln: 'OrderingServiceContentsType.ProductOrders',
        tn: null,
        ps: [{
            n: 'supported',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'supported'
            },
            t: 'a'
          }]
      }, {
        ln: 'DeliveryOptionsType.OnlineDataAccess',
        tn: null,
        ps: [{
            n: 'protocol',
            rq: true
          }]
      }, {
        ln: 'CurrencyType',
        ps: [{
            n: 'value',
            rq: true,
            ti: 'Double'
          }, {
            n: 'currency',
            rq: true
          }]
      }, {
        ln: 'CommonOrderItemType',
        ps: [{
            n: 'itemId',
            rq: true
          }, {
            n: 'productOrderOptionsId'
          }, {
            n: 'orderItemRemark'
          }, {
            n: 'option',
            mno: 0,
            col: true,
            ti: '.CommonOrderItemType.Option'
          }, {
            n: 'sceneSelection',
            mno: 0,
            col: true,
            ti: '.CommonOrderItemType.SceneSelection'
          }, {
            n: 'deliveryOptions',
            ti: '.DeliveryOptionsType'
          }, {
            n: 'payment',
            ti: '.PaymentOptionSelectedValue'
          }, {
            n: 'extension',
            mno: 0,
            col: true,
            ti: 'AnyType'
          }, {
            n: 'productId',
            rq: true,
            ti: '.ProductIdType'
          }, {
            n: 'taskingRequestId',
            rq: true,
            ti: '.TaskingRequestIdType'
          }, {
            n: 'subscriptionId',
            rq: true,
            ti: '.SubscriptionIdType'
          }]
      }, {
        ln: 'CollectionCapability',
        ps: [{
            n: 'collectionId',
            rq: true
          }, {
            n: 'productOrders',
            en: 'ProductOrders',
            ti: '.CollectionCapability.ProductOrders'
          }, {
            n: 'subscriptionOrders',
            en: 'SubscriptionOrders',
            ti: '.CollectionCapability.SubscriptionOrders'
          }, {
            n: 'describeResultAccessCapabilities',
            en: 'DescribeResultAccessCapabilities',
            ti: '.CollectionCapability.DescribeResultAccessCapabilities'
          }, {
            n: 'cancelCapabilities',
            en: 'CancelCapabilities',
            ti: '.CollectionCapability.CancelCapabilities'
          }]
      }, {
        ln: 'OnLineAccessAddressType.ServiceAddress',
        tn: null,
        ps: [{
            n: 'type'
          }, {
            n: 'url',
            rq: true,
            en: 'URL'
          }, {
            n: 'infoURL',
            rq: true,
            en: 'info_URL'
          }, {
            n: 'infoRequest',
            ti: '.OnLineAccessAddressType.ServiceAddress.InfoRequest'
          }]
      }, {
        ln: 'OrderItemGroupPrice',
        ps: [{
            n: 'provider',
            rq: true,
            ti: '.ProviderType'
          }, {
            n: 'quotationId'
          }, {
            n: 'validityTime',
            ti: 'Calendar'
          }, {
            n: 'price',
            rq: true,
            ti: '.CurrencyType'
          }, {
            n: 'balance',
            ti: '.CurrencyType'
          }, {
            n: 'orderItemPrice',
            rq: true,
            col: true,
            ti: '.OrderItemPrice'
          }, {
            n: 'contractInformation'
          }]
      }, {
        ln: 'OrderingServiceContentsType.SubmitCapabilities',
        tn: null,
        ps: [{
            n: 'asynchronous',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'asynchronous'
            },
            t: 'a'
          }, {
            n: 'maxNumberOfProducts',
            ti: 'Integer',
            an: {
              lp: 'maxNumberOfProducts'
            },
            t: 'a'
          }, {
            n: 'globalDeliveryOptions',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'globalDeliveryOptions'
            },
            t: 'a'
          }, {
            n: 'localDeliveryOptions',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'localDeliveryOptions'
            },
            t: 'a'
          }, {
            n: 'globalOrderOptions',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'globalOrderOptions'
            },
            t: 'a'
          }, {
            n: 'localOrderOptions',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'localOrderOptions'
            },
            t: 'a'
          }]
      }, {
        ln: 'GetQuotationResponseAckType',
        bti: '.OrderResponseBaseType'
      }, {
        ln: 'EncodingType',
        ps: [{
            n: 'supportedEncoding',
            rq: true,
            col: true
          }]
      }, {
        ln: 'SubscriptionIdType',
        bti: '.OrderItemIdType',
        ps: [{
            n: 'collectionId',
            rq: true
          }]
      }, {
        ln: 'StatusNotificationAckType',
        bti: '.OrderResponseBaseType'
      }, {
        ln: 'ProductIdType',
        bti: '.OrderItemIdType',
        ps: [{
            n: 'identifier',
            rq: true
          }, {
            n: 'collectionId'
          }]
      }, {
        ln: 'CollectionCapability.DescribeResultAccessCapabilities',
        tn: null,
        ps: [{
            n: 'supported',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'supported'
            },
            t: 'a'
          }]
      }, {
        ln: 'OnlineAddressType',
        ps: [{
            n: 'protocol',
            rq: true
          }, {
            n: 'serverAddress',
            rq: true
          }, {
            n: 'userName'
          }, {
            n: 'userPassword'
          }, {
            n: 'path'
          }]
      }, {
        ln: 'OrderingServiceContentsType.SubscriptionOrders',
        tn: null,
        ps: [{
            n: 'supported',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'supported'
            },
            t: 'a'
          }]
      }, {
        ln: 'CommonOrderOptionsType.ProductDeliveryOptions.OnlineDataDelivery',
        tn: null,
        ps: [{
            n: 'protocol',
            rq: true,
            col: true
          }]
      }, {
        ln: 'CollectionCapability.SubscriptionOrders',
        tn: null,
        ps: [{
            n: 'supported',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'supported'
            },
            t: 'a'
          }]
      }, {
        ln: 'CommonOrderOptionsType.ProductDeliveryOptions.MediaDelivery',
        tn: null,
        ps: [{
            n: 'packageMedium',
            rq: true,
            col: true
          }]
      }, {
        ln: 'CommonOrderOptionsType',
        ps: [{
            n: 'productOrderOptionsId',
            rq: true
          }, {
            n: 'identifier'
          }, {
            n: 'description'
          }, {
            n: 'orderType',
            rq: true
          }, {
            n: 'option',
            mno: 0,
            col: true,
            ti: '.ParameterDescriptorType'
          }, {
            n: 'productDeliveryOptions',
            rq: true,
            col: true,
            ti: '.CommonOrderOptionsType.ProductDeliveryOptions'
          }, {
            n: 'orderOptionInfoURL'
          }, {
            n: 'paymentOptions',
            mno: 0,
            col: true,
            ti: '.PaymentOptionDefinitionType'
          }, {
            n: 'sceneSelectionOption',
            mno: 0,
            col: true,
            ti: '.CommonOrderOptionsType.SceneSelectionOption'
          }]
      }, {
        ln: 'OrderSearchCriteriaType',
        ps: [{
            n: 'lastUpdate',
            ti: 'Calendar'
          }, {
            n: 'lastUpdateEnd',
            ti: 'AnyType'
          }, {
            n: 'orderStatus',
            mno: 0,
            col: true
          }, {
            n: 'orderReference'
          }, {
            n: 'extension',
            mno: 0,
            col: true,
            ti: 'AnyType'
          }]
      }, {
        ln: 'OrderingServiceContentsType.ProgrammingOrders',
        tn: null,
        ps: [{
            n: 'supported',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'supported'
            },
            t: 'a'
          }, {
            n: 'spsurl',
            an: {
              lp: 'SPS_URL'
            },
            t: 'a'
          }]
      }, {
        ln: 'GetStatusRequestType',
        bti: '.OrderRequestBaseType',
        ps: [{
            n: 'timeStamp',
            ti: 'Calendar'
          }, {
            n: 'orderId',
            rq: true
          }, {
            n: 'filteringCriteria',
            rq: true,
            ti: '.OrderSearchCriteriaType'
          }, {
            n: 'presentation',
            rq: true
          }]
      }, {
        ln: 'CommonOrderOptionsType.ProductDeliveryOptions.OnlineDataAccess',
        tn: null,
        ps: [{
            n: 'protocol',
            rq: true,
            col: true
          }]
      }, {
        ln: 'OrderRequestBaseType',
        ps: [{
            n: 'service',
            rq: true,
            an: {
              lp: 'service'
            },
            t: 'a'
          }, {
            n: 'version',
            rq: true,
            an: {
              lp: 'version'
            },
            t: 'a'
          }]
      }, {
        ln: 'GetStatusResponseType',
        bti: '.OrderResponseBaseType',
        ps: [{
            n: 'orderMonitorSpecification',
            mno: 0,
            col: true,
            ti: '.CommonOrderMonitorSpecification'
          }]
      }, {
        ln: 'CommonOrderItemType.Option',
        tn: null,
        ps: [{
            n: 'parameterData',
            rq: true,
            en: 'ParameterData',
            ti: '.ParameterDataType'
          }]
      }, {
        ln: 'ParameterDataType',
        ps: [{
            n: 'encoding',
            rq: true
          }, {
            n: 'values',
            rq: true,
            ti: 'AnyType'
          }]
      }, {
        ln: 'CollectionCapability.ProductOrders',
        tn: null,
        ps: [{
            n: 'supported',
            rq: true,
            ti: 'Boolean',
            an: {
              lp: 'supported'
            },
            t: 'a'
          }]
      }, {
        ln: 'OnLineAccessAddressType',
        ps: [{
            n: 'serviceAddress',
            en: 'ServiceAddress',
            ti: '.OnLineAccessAddressType.ServiceAddress'
          }, {
            n: 'resourceAddress',
            rq: true,
            en: 'ResourceAddress',
            ti: '.OnLineAccessAddressType.ResourceAddress'
          }]
      }, {
        ln: 'DescribeResultAccessRequestType',
        bti: '.OrderRequestBaseType',
        ps: [{
            n: 'timeStamp',
            ti: 'Calendar'
          }, {
            n: 'orderId',
            rq: true
          }, {
            n: 'subFunction',
            rq: true
          }]
      }, {
        ln: 'OrderItemPrice',
        ps: [{
            n: 'itemId',
            rq: true
          }, {
            n: 'productId',
            rq: true,
            ti: '.ProductIdType'
          }, {
            n: 'taskingRequestId',
            rq: true,
            ti: '.TaskingRequestIdType'
          }, {
            n: 'subscriptionId',
            rq: true,
            ti: '.SubscriptionIdType'
          }, {
            n: 'price',
            ti: '.CurrencyType'
          }, {
            n: 'priceInformation'
          }, {
            n: 'contractInformation'
          }]
      }, {
        t: 'enum',
        ln: 'ProtocolType',
        vs: ['ftp', 'ftps', 'sftp', 'P2P', 'wcs', 'wms', 'e-mail', 'dds', 'http', 'https']
      }, {
        t: 'enum',
        ln: 'EnumStatusType',
        vs: ['Submitted', 'Accepted', 'Cancelled', 'Completed', 'InProduction', 'Suspended', 'Failed', 'Terminated', 'Downloaded']
      }, {
        t: 'enum',
        ln: 'PackageMedium',
        vs: ['NTP', 'DAT', 'Exabyte', 'CD-ROM', 'DLT', 'D1', 'DVD', 'BD', 'LTO', 'LTO2', 'LTO4']
      }, {
        t: 'enum',
        ln: 'SWEEncoding',
        vs: ['XMLEncoding', 'TextEncoding']
      }, {
        t: 'enum',
        ln: 'PresentationType',
        vs: ['brief', 'full']
      }, {
        t: 'enum',
        ln: 'PriorityType',
        vs: ['STANDARD', 'FAST_TRACK']
      }, {
        t: 'enum',
        ln: 'EnumOrderType',
        vs: ['PRODUCT_ORDER', 'SUBSCRIPTION_ORDER', 'TASKING_ORDER']
      }, {
        t: 'enum',
        ln: 'EnumPackagingType',
        vs: ['zip', 'tar', 'tgz', 'compress', 'bzip', 'bzip2', 'gzip', 'rar', '7z']
      }, {
        t: 'enum',
        ln: 'OrderResponseStatusType',
        vs: ['success', 'partial']
      }],
    eis: [{
        en: 'taskingRequestId',
        ti: '.TaskingRequestIdType'
      }, {
        en: 'productId',
        ti: '.ProductIdType'
      }, {
        en: 'Cancel',
        ti: '.CancelRequestType'
      }, {
        en: 'orderSpecification',
        ti: '.OrderSpecification'
      }, {
        en: 'subscriptionId',
        ti: '.SubscriptionIdType'
      }, {
        en: 'priority'
      }, {
        en: 'itemId'
      }, {
        en: 'SubmitResponse',
        ti: '.StatusNotificationType'
      }, {
        en: 'extension',
        ti: 'AnyType'
      }, {
        en: 'GetQuotationResponse',
        ti: '.GetQuotationResponseRequestType'
      }, {
        en: 'productOrderOptionsId'
      }, {
        en: 'SubmitResponseAck',
        ti: '.StatusNotificationAckType'
      }, {
        en: 'ParameterData',
        ti: '.ParameterDataType'
      }, {
        en: 'Capabilities',
        ti: '.Capabilities'
      }, {
        en: 'statusNotification'
      }, {
        en: 'deliveryOptions',
        ti: '.DeliveryOptionsType'
      }, {
        en: 'GetStatusResponse',
        ti: '.GetStatusResponseType'
      }, {
        en: 'contractInformation'
      }, {
        en: 'SubmitAck',
        ti: '.SubmitOrderResponseType'
      }, {
        en: 'GetOptions',
        ti: '.OrderOptionsRequestType'
      }, {
        en: 'identifier'
      }, {
        en: 'CancelResponseAck',
        ti: '.StatusNotificationAckType'
      }, {
        en: 'CancelAck',
        ti: '.CancelRequestAckType'
      }, {
        en: 'CancelResponse',
        ti: '.StatusNotificationType'
      }, {
        en: 'protocol'
      }, {
        en: 'DescribeResultAccess',
        ti: '.DescribeResultAccessRequestType'
      }, {
        en: 'orderId'
      }, {
        en: 'collectionId'
      }, {
        en: 'DescribeResultAccessResponse',
        ti: '.DescribeResultAccessResponseType'
      }, {
        en: 'GetQuotationResponseAck',
        ti: '.GetQuotationResponseAckType'
      }, {
        en: 'paymentMethod'
      }, {
        en: 'orderOptions',
        ti: '.CommonOrderOptionsType'
      }, {
        en: 'GetCapabilities',
        ti: '.GetCapabilities'
      }, {
        en: 'GetStatus',
        ti: '.GetStatusRequestType'
      }, {
        en: 'Submit',
        ti: '.SubmitOrderRequestType'
      }, {
        en: 'GetQuotation',
        ti: '.GetQuotationRequestType'
      }, {
        en: 'GetQuotationAck',
        ti: '.GetQuotationAckType'
      }, {
        en: 'packaging',
        sc: '.CommonOrderSpecification'
      }, {
        en: 'GetOptionsResponse',
        ti: '.OrderOptionsResponseType'
      }, {
        en: 'orderReference'
      }, {
        en: 'orderMonitorSpecification',
        ti: '.CommonOrderMonitorSpecification'
      }]
  };
  return {
    OSEO_1_0: OSEO_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], OSEO_1_0_Module_Factory);
}
else {
  var OSEO_1_0_Module = OSEO_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.OSEO_1_0 = OSEO_1_0_Module.OSEO_1_0;
  }
  else {
    var OSEO_1_0 = OSEO_1_0_Module.OSEO_1_0;
  }
}