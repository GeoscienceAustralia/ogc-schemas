var WMSC_1_1_1_Module_Factory = function () {
  var WMSC_1_1_1 = {
    n: 'WMSC_1_1_1',
    tis: [{
        ln: 'SRS',
        tn: null,
        ps: [{
            n: 'value',
            t: 'v'
          }]
      }, {
        ln: 'DescribeLayer',
        tn: null,
        ps: [{
            n: 'format',
            col: true,
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'dcpType',
            col: true,
            en: {
              lp: 'DCPType'
            },
            ti: '.DCPType'
          }]
      }, {
        ln: 'PutStyles',
        tn: null,
        ps: [{
            n: 'format',
            col: true,
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'dcpType',
            col: true,
            en: {
              lp: 'DCPType'
            },
            ti: '.DCPType'
          }]
      }, {
        ln: 'ContactAddress',
        tn: null,
        ps: [{
            n: 'addressType',
            en: {
              lp: 'AddressType'
            }
          }, {
            n: 'address',
            en: {
              lp: 'Address'
            }
          }, {
            n: 'city',
            en: {
              lp: 'City'
            }
          }, {
            n: 'stateOrProvince',
            en: {
              lp: 'StateOrProvince'
            }
          }, {
            n: 'postCode',
            en: {
              lp: 'PostCode'
            }
          }, {
            n: 'country',
            en: {
              lp: 'Country'
            }
          }]
      }, {
        ln: 'MetadataURL',
        tn: null,
        ps: [{
            n: 'type',
            an: {
              lp: 'type'
            },
            t: 'a'
          }, {
            n: 'format',
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
          }]
      }, {
        ln: 'UserDefinedSymbolization',
        tn: null,
        ps: [{
            n: 'supportSLD',
            an: {
              lp: 'SupportSLD'
            },
            t: 'a'
          }, {
            n: 'userLayer',
            an: {
              lp: 'UserLayer'
            },
            t: 'a'
          }, {
            n: 'userStyle',
            an: {
              lp: 'UserStyle'
            },
            t: 'a'
          }, {
            n: 'remoteWFS',
            an: {
              lp: 'RemoteWFS'
            },
            t: 'a'
          }]
      }, {
        ln: 'ContactInformation',
        tn: null,
        ps: [{
            n: 'contactPersonPrimary',
            en: {
              lp: 'ContactPersonPrimary'
            },
            ti: '.ContactPersonPrimary'
          }, {
            n: 'contactPosition',
            en: {
              lp: 'ContactPosition'
            }
          }, {
            n: 'contactAddress',
            en: {
              lp: 'ContactAddress'
            },
            ti: '.ContactAddress'
          }, {
            n: 'contactVoiceTelephone',
            en: {
              lp: 'ContactVoiceTelephone'
            }
          }, {
            n: 'contactFacsimileTelephone',
            en: {
              lp: 'ContactFacsimileTelephone'
            }
          }, {
            n: 'contactElectronicMailAddress',
            en: {
              lp: 'ContactElectronicMailAddress'
            }
          }]
      }, {
        ln: 'KeywordList',
        tn: null,
        ps: [{
            n: 'keyword',
            col: true,
            en: {
              lp: 'Keyword'
            },
            ti: '.Keyword'
          }]
      }, {
        ln: 'LogoURL',
        tn: null,
        ps: [{
            n: 'width',
            an: {
              lp: 'width'
            },
            t: 'a'
          }, {
            n: 'height',
            an: {
              lp: 'height'
            },
            t: 'a'
          }, {
            n: 'format',
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
          }]
      }, {
        ln: 'Capability',
        tn: null,
        ps: [{
            n: 'request',
            en: {
              lp: 'Request'
            },
            ti: '.Request'
          }, {
            n: 'exception',
            en: {
              lp: 'Exception'
            },
            ti: '.Exception'
          }, {
            n: 'vendorSpecificCapabilities',
            en: {
              lp: 'VendorSpecificCapabilities'
            },
            ti: '.VendorSpecificCapabilities'
          }, {
            n: 'userDefinedSymbolization',
            en: {
              lp: 'UserDefinedSymbolization'
            },
            ti: '.UserDefinedSymbolization'
          }, {
            n: 'layer',
            en: {
              lp: 'Layer'
            },
            ti: '.Layer'
          }]
      }, {
        ln: 'WMTMSCapabilities',
        tn: null,
        ps: [{
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'updateSequence',
            an: {
              lp: 'updateSequence'
            },
            t: 'a'
          }, {
            n: 'service',
            en: {
              lp: 'Service'
            },
            ti: '.Service'
          }, {
            n: 'capability',
            en: {
              lp: 'Capability'
            },
            ti: '.Capability'
          }]
      }, {
        ln: 'Request',
        tn: null,
        ps: [{
            n: 'getCapabilities',
            en: {
              lp: 'GetCapabilities'
            },
            ti: '.GetCapabilities'
          }, {
            n: 'getMap',
            en: {
              lp: 'GetMap'
            },
            ti: '.GetMap'
          }, {
            n: 'getFeatureInfo',
            en: {
              lp: 'GetFeatureInfo'
            },
            ti: '.GetFeatureInfo'
          }, {
            n: 'describeLayer',
            en: {
              lp: 'DescribeLayer'
            },
            ti: '.DescribeLayer'
          }, {
            n: 'getLegendGraphic',
            en: {
              lp: 'GetLegendGraphic'
            },
            ti: '.GetLegendGraphic'
          }, {
            n: 'getStyles',
            en: {
              lp: 'GetStyles'
            },
            ti: '.GetStyles'
          }, {
            n: 'putStyles',
            en: {
              lp: 'PutStyles'
            },
            ti: '.PutStyles'
          }]
      }, {
        ln: 'ScaleHint',
        tn: null,
        ps: [{
            n: 'min',
            an: {
              lp: 'min'
            },
            t: 'a'
          }, {
            n: 'max',
            an: {
              lp: 'max'
            },
            t: 'a'
          }]
      }, {
        ln: 'Query',
        tn: null,
        ps: [{
            n: 'typeName',
            an: {
              lp: 'typeName'
            },
            t: 'a'
          }]
      }, {
        ln: 'GetLegendGraphic',
        tn: null,
        ps: [{
            n: 'format',
            col: true,
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'dcpType',
            col: true,
            en: {
              lp: 'DCPType'
            },
            ti: '.DCPType'
          }]
      }, {
        ln: 'StyleURL',
        tn: null,
        ps: [{
            n: 'format',
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
          }]
      }, {
        ln: 'OnlineResource',
        tn: null,
        ps: [{
            n: 'xmlnsXlink',
            an: {
              lp: 'xmlns:xlink'
            },
            t: 'a'
          }, {
            n: 'xlinkType',
            an: {
              lp: 'xlink:type'
            },
            t: 'a'
          }, {
            n: 'xlinkHref',
            an: {
              lp: 'xlink:href'
            },
            t: 'a'
          }]
      }, {
        ln: 'LegendURL',
        tn: null,
        ps: [{
            n: 'width',
            an: {
              lp: 'width'
            },
            t: 'a'
          }, {
            n: 'height',
            an: {
              lp: 'height'
            },
            t: 'a'
          }, {
            n: 'format',
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
          }]
      }, {
        ln: 'LayerDescription',
        tn: null,
        ps: [{
            n: 'name',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'wfs',
            an: {
              lp: 'wfs'
            },
            t: 'a'
          }, {
            n: 'owsType',
            an: {
              lp: 'owsType'
            },
            t: 'a'
          }, {
            n: 'owsURL',
            an: {
              lp: 'owsURL'
            },
            t: 'a'
          }, {
            n: 'query',
            col: true,
            en: {
              lp: 'Query'
            },
            ti: '.Query'
          }]
      }, {
        ln: 'BoundingBox',
        tn: null,
        ps: [{
            n: 'srs',
            an: {
              lp: 'SRS'
            },
            t: 'a'
          }, {
            n: 'minx',
            an: {
              lp: 'minx'
            },
            t: 'a'
          }, {
            n: 'miny',
            an: {
              lp: 'miny'
            },
            t: 'a'
          }, {
            n: 'maxx',
            an: {
              lp: 'maxx'
            },
            t: 'a'
          }, {
            n: 'maxy',
            an: {
              lp: 'maxy'
            },
            t: 'a'
          }, {
            n: 'resx',
            an: {
              lp: 'resx'
            },
            t: 'a'
          }, {
            n: 'resy',
            an: {
              lp: 'resy'
            },
            t: 'a'
          }]
      }, {
        ln: 'VendorSpecificCapabilities',
        tn: null,
        ps: [{
            n: 'tileSet',
            col: true,
            en: {
              lp: 'TileSet'
            },
            ti: '.TileSet'
          }]
      }, {
        ln: 'ServiceException',
        tn: null,
        ps: [{
            n: 'code',
            an: {
              lp: 'code'
            },
            t: 'a'
          }, {
            n: 'value',
            t: 'v'
          }]
      }, {
        ln: 'Attribution',
        tn: null,
        ps: [{
            n: 'title',
            en: {
              lp: 'Title'
            }
          }, {
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
          }, {
            n: 'logoURL',
            en: {
              lp: 'LogoURL'
            },
            ti: '.LogoURL'
          }]
      }, {
        ln: 'DataURL',
        tn: null,
        ps: [{
            n: 'format',
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
          }]
      }, {
        ln: 'Layer',
        tn: null,
        ps: [{
            n: 'queryable',
            an: {
              lp: 'queryable'
            },
            t: 'a'
          }, {
            n: 'cascaded',
            an: {
              lp: 'cascaded'
            },
            t: 'a'
          }, {
            n: 'opaque',
            an: {
              lp: 'opaque'
            },
            t: 'a'
          }, {
            n: 'noSubsets',
            an: {
              lp: 'noSubsets'
            },
            t: 'a'
          }, {
            n: 'fixedWidth',
            an: {
              lp: 'fixedWidth'
            },
            t: 'a'
          }, {
            n: 'fixedHeight',
            an: {
              lp: 'fixedHeight'
            },
            t: 'a'
          }, {
            n: 'name',
            en: {
              lp: 'Name'
            }
          }, {
            n: 'title',
            en: {
              lp: 'Title'
            }
          }, {
            n: '_abstract',
            en: {
              lp: 'Abstract'
            }
          }, {
            n: 'keywordList',
            en: {
              lp: 'KeywordList'
            },
            ti: '.KeywordList'
          }, {
            n: 'srs',
            col: true,
            en: {
              lp: 'SRS'
            },
            ti: '.SRS'
          }, {
            n: 'latLonBoundingBox',
            en: {
              lp: 'LatLonBoundingBox'
            },
            ti: '.LatLonBoundingBox'
          }, {
            n: 'boundingBox',
            col: true,
            en: {
              lp: 'BoundingBox'
            },
            ti: '.BoundingBox'
          }, {
            n: 'dimension',
            col: true,
            en: {
              lp: 'Dimension'
            },
            ti: '.Dimension'
          }, {
            n: 'extent',
            col: true,
            en: {
              lp: 'Extent'
            },
            ti: '.Extent'
          }, {
            n: 'attribution',
            en: {
              lp: 'Attribution'
            },
            ti: '.Attribution'
          }, {
            n: 'authorityURL',
            col: true,
            en: {
              lp: 'AuthorityURL'
            },
            ti: '.AuthorityURL'
          }, {
            n: 'identifier',
            col: true,
            en: {
              lp: 'Identifier'
            },
            ti: '.Identifier'
          }, {
            n: 'metadataURL',
            col: true,
            en: {
              lp: 'MetadataURL'
            },
            ti: '.MetadataURL'
          }, {
            n: 'dataURL',
            col: true,
            en: {
              lp: 'DataURL'
            },
            ti: '.DataURL'
          }, {
            n: 'featureListURL',
            col: true,
            en: {
              lp: 'FeatureListURL'
            },
            ti: '.FeatureListURL'
          }, {
            n: 'style',
            col: true,
            en: {
              lp: 'Style'
            },
            ti: '.Style'
          }, {
            n: 'scaleHint',
            en: {
              lp: 'ScaleHint'
            },
            ti: '.ScaleHint'
          }, {
            n: 'layer',
            col: true,
            en: {
              lp: 'Layer'
            },
            ti: '.Layer'
          }]
      }, {
        ln: 'Styles',
        tn: null,
        ps: [{
            n: 'value',
            t: 'v'
          }]
      }, {
        ln: 'Extent',
        tn: null,
        ps: [{
            n: 'name',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: '_default',
            an: {
              lp: 'default'
            },
            t: 'a'
          }, {
            n: 'nearestValue',
            an: {
              lp: 'nearestValue'
            },
            t: 'a'
          }, {
            n: 'multipleValues',
            an: {
              lp: 'multipleValues'
            },
            t: 'a'
          }, {
            n: 'current',
            an: {
              lp: 'current'
            },
            t: 'a'
          }, {
            n: 'value',
            t: 'v'
          }]
      }, {
        ln: 'LatLonBoundingBox',
        tn: null,
        ps: [{
            n: 'minx',
            an: {
              lp: 'minx'
            },
            t: 'a'
          }, {
            n: 'miny',
            an: {
              lp: 'miny'
            },
            t: 'a'
          }, {
            n: 'maxx',
            an: {
              lp: 'maxx'
            },
            t: 'a'
          }, {
            n: 'maxy',
            an: {
              lp: 'maxy'
            },
            t: 'a'
          }]
      }, {
        ln: 'Style',
        tn: null,
        ps: [{
            n: 'name',
            en: {
              lp: 'Name'
            }
          }, {
            n: 'title',
            en: {
              lp: 'Title'
            }
          }, {
            n: '_abstract',
            en: {
              lp: 'Abstract'
            }
          }, {
            n: 'legendURL',
            col: true,
            en: {
              lp: 'LegendURL'
            },
            ti: '.LegendURL'
          }, {
            n: 'styleSheetURL',
            en: {
              lp: 'StyleSheetURL'
            },
            ti: '.StyleSheetURL'
          }, {
            n: 'styleURL',
            en: {
              lp: 'StyleURL'
            },
            ti: '.StyleURL'
          }]
      }, {
        ln: 'Layers',
        tn: null,
        ps: [{
            n: 'value',
            t: 'v'
          }]
      }, {
        ln: 'Keyword',
        tn: null,
        ps: [{
            n: 'value',
            t: 'v'
          }]
      }, {
        ln: 'WMSDescribeLayerResponse',
        tn: null,
        ps: [{
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'layerDescription',
            col: true,
            en: {
              lp: 'LayerDescription'
            },
            ti: '.LayerDescription'
          }]
      }, {
        ln: 'GetFeatureInfo',
        tn: null,
        ps: [{
            n: 'format',
            col: true,
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'dcpType',
            col: true,
            en: {
              lp: 'DCPType'
            },
            ti: '.DCPType'
          }]
      }, {
        ln: 'Get',
        tn: null,
        ps: [{
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
          }]
      }, {
        ln: 'Post',
        tn: null,
        ps: [{
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
          }]
      }, {
        ln: 'TileSet',
        tn: null,
        ps: [{
            n: 'srs',
            en: {
              lp: 'SRS'
            },
            ti: '.SRS'
          }, {
            n: 'boundingBox',
            en: {
              lp: 'BoundingBox'
            },
            ti: '.BoundingBox'
          }, {
            n: 'resolutions',
            en: {
              lp: 'Resolutions'
            }
          }, {
            n: 'width',
            en: {
              lp: 'Width'
            }
          }, {
            n: 'height',
            en: {
              lp: 'Height'
            }
          }, {
            n: 'format',
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'layers',
            col: true,
            en: {
              lp: 'Layers'
            },
            ti: '.Layers'
          }, {
            n: 'styles',
            col: true,
            en: {
              lp: 'Styles'
            },
            ti: '.Styles'
          }]
      }, {
        ln: 'Identifier',
        tn: null,
        ps: [{
            n: 'authority',
            an: {
              lp: 'authority'
            },
            t: 'a'
          }, {
            n: 'value',
            t: 'v'
          }]
      }, {
        ln: 'GetStyles',
        tn: null,
        ps: [{
            n: 'format',
            col: true,
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'dcpType',
            col: true,
            en: {
              lp: 'DCPType'
            },
            ti: '.DCPType'
          }]
      }, {
        ln: 'HTTP',
        tn: null,
        ps: [{
            n: 'getOrPost',
            col: true,
            etis: [{
                en: {
                  lp: 'Get'
                },
                ti: '.Get'
              }, {
                en: {
                  lp: 'Post'
                },
                ti: '.Post'
              }],
            t: 'es'
          }]
      }, {
        ln: 'ContactPersonPrimary',
        tn: null,
        ps: [{
            n: 'contactPerson',
            en: {
              lp: 'ContactPerson'
            }
          }, {
            n: 'contactOrganization',
            en: {
              lp: 'ContactOrganization'
            }
          }]
      }, {
        ln: 'StyleSheetURL',
        tn: null,
        ps: [{
            n: 'format',
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
          }]
      }, {
        ln: 'ServiceExceptionReport',
        tn: null,
        ps: [{
            n: 'version',
            an: {
              lp: 'version'
            },
            t: 'a'
          }, {
            n: 'serviceException',
            col: true,
            en: {
              lp: 'ServiceException'
            },
            ti: '.ServiceException'
          }]
      }, {
        ln: 'Service',
        tn: null,
        ps: [{
            n: 'name',
            en: {
              lp: 'Name'
            }
          }, {
            n: 'title',
            en: {
              lp: 'Title'
            }
          }, {
            n: '_abstract',
            en: {
              lp: 'Abstract'
            }
          }, {
            n: 'keywordList',
            en: {
              lp: 'KeywordList'
            },
            ti: '.KeywordList'
          }, {
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
          }, {
            n: 'contactInformation',
            en: {
              lp: 'ContactInformation'
            },
            ti: '.ContactInformation'
          }, {
            n: 'fees',
            en: {
              lp: 'Fees'
            }
          }, {
            n: 'accessConstraints',
            en: {
              lp: 'AccessConstraints'
            }
          }]
      }, {
        ln: 'Dimension',
        tn: null,
        ps: [{
            n: 'name',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'units',
            an: {
              lp: 'units'
            },
            t: 'a'
          }, {
            n: 'unitSymbol',
            an: {
              lp: 'unitSymbol'
            },
            t: 'a'
          }]
      }, {
        ln: 'Exception',
        tn: null,
        ps: [{
            n: 'format',
            col: true,
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }]
      }, {
        ln: 'AuthorityURL',
        tn: null,
        ps: [{
            n: 'name',
            an: {
              lp: 'name'
            },
            t: 'a'
          }, {
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
          }]
      }, {
        ln: 'FeatureListURL',
        tn: null,
        ps: [{
            n: 'format',
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'onlineResource',
            en: {
              lp: 'OnlineResource'
            },
            ti: '.OnlineResource'
          }]
      }, {
        ln: 'GetMap',
        tn: null,
        ps: [{
            n: 'format',
            col: true,
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'dcpType',
            col: true,
            en: {
              lp: 'DCPType'
            },
            ti: '.DCPType'
          }]
      }, {
        ln: 'GetCapabilities',
        tn: null,
        ps: [{
            n: 'format',
            col: true,
            en: {
              lp: 'Format'
            },
            ti: '.Format'
          }, {
            n: 'dcpType',
            col: true,
            en: {
              lp: 'DCPType'
            },
            ti: '.DCPType'
          }]
      }, {
        ln: 'Format',
        tn: null,
        ps: [{
            n: 'value',
            t: 'v'
          }]
      }, {
        ln: 'DCPType',
        tn: null,
        ps: [{
            n: 'http',
            en: {
              lp: 'HTTP'
            },
            ti: '.HTTP'
          }]
      }],
    eis: [{
        en: {
          lp: 'GetMap'
        },
        ti: '.GetMap'
      }, {
        en: {
          lp: 'Extent'
        },
        ti: '.Extent'
      }, {
        en: {
          lp: 'HTTP'
        },
        ti: '.HTTP'
      }, {
        en: {
          lp: 'Post'
        },
        ti: '.Post'
      }, {
        en: {
          lp: 'ScaleHint'
        },
        ti: '.ScaleHint'
      }, {
        en: {
          lp: 'GetFeatureInfo'
        },
        ti: '.GetFeatureInfo'
      }, {
        en: {
          lp: 'Format'
        },
        ti: '.Format'
      }, {
        en: {
          lp: 'Styles'
        },
        ti: '.Styles'
      }, {
        en: {
          lp: 'Capability'
        },
        ti: '.Capability'
      }, {
        en: {
          lp: 'AuthorityURL'
        },
        ti: '.AuthorityURL'
      }, {
        en: {
          lp: 'KeywordList'
        },
        ti: '.KeywordList'
      }, {
        en: {
          lp: 'ContactAddress'
        },
        ti: '.ContactAddress'
      }, {
        en: {
          lp: 'LayerDescription'
        },
        ti: '.LayerDescription'
      }, {
        en: {
          lp: 'GetLegendGraphic'
        },
        ti: '.GetLegendGraphic'
      }, {
        en: {
          lp: 'Keyword'
        },
        ti: '.Keyword'
      }, {
        en: {
          lp: 'Query'
        },
        ti: '.Query'
      }, {
        en: {
          lp: 'ServiceException'
        },
        ti: '.ServiceException'
      }, {
        en: {
          lp: 'DCPType'
        },
        ti: '.DCPType'
      }, {
        en: {
          lp: 'Dimension'
        },
        ti: '.Dimension'
      }, {
        en: {
          lp: 'Identifier'
        },
        ti: '.Identifier'
      }, {
        en: {
          lp: 'VendorSpecificCapabilities'
        },
        ti: '.VendorSpecificCapabilities'
      }, {
        en: {
          lp: 'UserDefinedSymbolization'
        },
        ti: '.UserDefinedSymbolization'
      }, {
        en: {
          lp: 'GetCapabilities'
        },
        ti: '.GetCapabilities'
      }, {
        en: {
          lp: 'ContactPersonPrimary'
        },
        ti: '.ContactPersonPrimary'
      }, {
        en: {
          lp: 'Style'
        },
        ti: '.Style'
      }, {
        en: {
          lp: 'ContactInformation'
        },
        ti: '.ContactInformation'
      }, {
        en: {
          lp: 'SRS'
        },
        ti: '.SRS'
      }, {
        en: {
          lp: 'Layers'
        },
        ti: '.Layers'
      }, {
        en: {
          lp: 'DescribeLayer'
        },
        ti: '.DescribeLayer'
      }, {
        en: {
          lp: 'OnlineResource'
        },
        ti: '.OnlineResource'
      }, {
        en: {
          lp: 'WMT_MS_Capabilities'
        },
        ti: '.WMTMSCapabilities'
      }, {
        en: {
          lp: 'StyleURL'
        },
        ti: '.StyleURL'
      }, {
        en: {
          lp: 'Exception'
        },
        ti: '.Exception'
      }, {
        en: {
          lp: 'WMS_DescribeLayerResponse'
        },
        ti: '.WMSDescribeLayerResponse'
      }, {
        en: {
          lp: 'ServiceExceptionReport'
        },
        ti: '.ServiceExceptionReport'
      }, {
        en: {
          lp: 'BoundingBox'
        },
        ti: '.BoundingBox'
      }, {
        en: {
          lp: 'LatLonBoundingBox'
        },
        ti: '.LatLonBoundingBox'
      }, {
        en: {
          lp: 'GetStyles'
        },
        ti: '.GetStyles'
      }, {
        en: {
          lp: 'Service'
        },
        ti: '.Service'
      }, {
        en: {
          lp: 'LogoURL'
        },
        ti: '.LogoURL'
      }, {
        en: {
          lp: 'Attribution'
        },
        ti: '.Attribution'
      }, {
        en: {
          lp: 'Get'
        },
        ti: '.Get'
      }, {
        en: {
          lp: 'DataURL'
        },
        ti: '.DataURL'
      }, {
        en: {
          lp: 'Request'
        },
        ti: '.Request'
      }, {
        en: {
          lp: 'LegendURL'
        },
        ti: '.LegendURL'
      }, {
        en: {
          lp: 'Layer'
        },
        ti: '.Layer'
      }, {
        en: {
          lp: 'MetadataURL'
        },
        ti: '.MetadataURL'
      }, {
        en: {
          lp: 'FeatureListURL'
        },
        ti: '.FeatureListURL'
      }, {
        en: {
          lp: 'TileSet'
        },
        ti: '.TileSet'
      }, {
        en: {
          lp: 'StyleSheetURL'
        },
        ti: '.StyleSheetURL'
      }, {
        en: {
          lp: 'PutStyles'
        },
        ti: '.PutStyles'
      }]
  };
  return {
    WMSC_1_1_1: WMSC_1_1_1
  };
};
if (typeof define === 'function' && define.amd) {
  define([], WMSC_1_1_1_Module_Factory);
}
else {
  var WMSC_1_1_1_Module = WMSC_1_1_1_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.WMSC_1_1_1 = WMSC_1_1_1_Module.WMSC_1_1_1;
  }
  else {
    var WMSC_1_1_1 = WMSC_1_1_1_Module.WMSC_1_1_1;
  }
}