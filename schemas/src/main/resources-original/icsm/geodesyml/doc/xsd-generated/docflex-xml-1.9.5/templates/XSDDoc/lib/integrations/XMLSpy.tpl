<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2009-03-31 12:23:05'
LAST_UPDATE='2014-07-05 20:02:50'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-xsddoc2'
APP_NAME='DocFlex/XML XSDDoc'
APP_VER='2.8.1'
APP_AUTHOR='Copyright © 2005-2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
TEMPLATE_TYPE='ProcedureTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ET='#DOCUMENTS'
INIT_EXPR='options = Map();
options.putByKey ("api",           getStringParam ("integration.XMLSpy.workarounds.api"));
options.putByKey ("show",          getBooleanParam("integration.XMLSpy.show"));
options.putByKey ("quit",          getBooleanParam("integration.XMLSpy.quit"));
options.putByKey ("diagramFormat", getStringParam ("integration.XMLSpy.diagramFormat"));
options.putByKey ("fixCoords",     getBooleanParam("integration.XMLSpy.workarounds.fixCoords"));

spyStart (options)'
FINISH_EXPR='spyFinish()'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='integration.XMLSpy.version';
		param.title='XMLSpy Version';
		param.type='string';
	}
	PARAM={
		param.name='integration.XMLSpy.show';
		param.title='Show XMLSpy';
		param.type='boolean';
	}
	PARAM={
		param.name='integration.XMLSpy.quit';
		param.title='Quit XMLSpy';
		param.type='boolean';
	}
	PARAM={
		param.name='integration.XMLSpy.diagramFormat';
		param.title='Diagram Format';
		param.type='enum';
		param.enum.values='PNG;EMF';
	}
	PARAM={
		param.name='integration.XMLSpy.workarounds';
		param.title='Workarounds';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='integration.XMLSpy.workarounds.api';
		param.title='XMLSpy API';
		param.type='enum';
		param.enum.values='old;2012';
	}
	PARAM={
		param.name='integration.XMLSpy.workarounds.fixCoords';
		param.title='Fix Imagemap Coordinates';
		param.type='boolean';
	}
	PARAM={
		param.name='integration.XMLSpy.workarounds.useNSPrefixes';
		param.title='Use Namespace Prefixes';
		param.type='boolean';
	}
	PARAM={
		param.name='integration.XMLSpy.workarounds.includeAttributes';
		param.title='Include Attributes';
		param.group='true';
		param.type='boolean';
	}
	PARAM={
		param.name='integration.XMLSpy.workarounds.includeAttributes.excludeAttributeGroups';
		param.title='Exclude Attribute Groups';
		param.type='boolean';
	}
	PARAM={
		param.name='integration.XMLSpy.workarounds.includeRedefinedComps';
		param.title='Include Redefined Components';
		param.type='boolean';
	}
</TEMPLATE_PARAMS>
<STYLES>
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs1';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs2';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s1';
		style.default='true';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs2';
}
<ROOT>
	<ELEMENT_ITER>
		TARGET_ET='xs:schema'
		SCOPE='advanced-location-rules'
		RULES={
			'* -> #DOCUMENT[hasAttr("isMainXSD")]/xs:schema';
		}
		<BODY>
			<SS_CALL>
				SS_NAME='Process Schema'
				PARAMS_EXPR='Array (getXMLDocument())'
			</SS_CALL>
		</BODY>
	</ELEMENT_ITER>
</ROOT>
<STOCK_SECTIONS>
	<FOLDER>
		SS_NAME='Add Components'
		DESCR='params[0]: master XML document'
		MATCHING_ET='xs:schema'
		INIT_EXPR='getBooleanParam("integration.XMLSpy.workarounds.useNSPrefixes") ?
{
  nsPrefix = findPrefixByNS (
    getServiceAttr("targetNamespace").toString(),
    filterElements (
      getPredecessorsUntilId (contextElement.id, true).toEnum(),
      "xs:schema"
    )
  );

  thisContext.setVar (
    "path_prefix", 
    nsPrefix != "" ? nsPrefix + ":" : ""
  )
} : {
  thisContext.setVar ("path_prefix", "")
}'
		<BODY>
			<ELEMENT_ITER>
				DESCR='iterate by global attributes'
				COND='getBooleanParam ("integration.XMLSpy.workarounds.includeAttributes")'
				STEP_EXPR='el = CustomElement();

el.setAttr ("id", contextElement.id);
el.setAttr ("type", "attribute");
el.setAttr ("name", getAttrValue("name"));
el.setAttr ("path", getAttrValue("name"));
el.setAttr ("path_prefix", thisContext.getVar ("path_prefix"));

thisContext.getVar ("components").toVector().addElement (el)'
				TARGET_ET='xs:attribute'
				SCOPE='simple-location-rules'
				RULES={
					'* -> xs:attribute';
				}
				SORTING='by-attr'
				SORTING_KEY={lpath='@name',ascending}
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='iterate by global elements'
				STEP_EXPR='el = CustomElement();

el.setAttr ("id", contextElement.id);
el.setAttr ("type", "element");
el.setAttr ("name", getAttrValue("name"));
el.setAttr ("path", getAttrValue("name"));
el.setAttr ("path_prefix", thisContext.getVar ("path_prefix"));

thisContext.getVar ("components").toVector().addElement (el)'
				TARGET_ET='xs:element'
				SCOPE='simple-location-rules'
				RULES={
					'* -> xs:element';
				}
				SORTING='by-attr'
				SORTING_KEY={lpath='@name',ascending}
				<BODY>
					<SS_CALL>
						SS_NAME='Add Local Element & Attributes'
						PARAMS_EXPR='Array (stockSection.param, getAttrValue("name"))'
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='iterate by groups'
				STEP_EXPR='el = CustomElement();

el.setAttr ("id", contextElement.id);
el.setAttr ("type", "group");
el.setAttr ("name", getAttrValue("name"));
el.setAttr ("path", getAttrValue("name"));
el.setAttr ("path_prefix", thisContext.getVar ("path_prefix"));
el.setAttr ("redefinition", hasServiceAttr ("redefinition"));

thisContext.getVar ("components").toVector().addElement (el)'
				TARGET_ET='xs:group'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> xs:group';
					'* -> xs:redefine/xs:group';
				}
				FILTER='! hasServiceAttr ("redefined") ||
getBooleanParam("integration.XMLSpy.workarounds.includeRedefinedComps")'
				SORTING='by-attr'
				SORTING_KEY={lpath='@name',ascending}
				<BODY>
					<SS_CALL>
						SS_NAME='Add Local Element & Attributes'
						PARAMS_EXPR='Array (stockSection.param, getAttrValue("name"))'
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='iterate by complex types'
				STEP_EXPR='el = CustomElement();

el.setAttr ("id", contextElement.id);
el.setAttr ("type", "complexType");
el.setAttr ("name", getAttrValue("name"));
el.setAttr ("path", getAttrValue("name"));
el.setAttr ("path_prefix", thisContext.getVar ("path_prefix"));
el.setAttr ("redefinition", hasServiceAttr ("redefinition"));

thisContext.getVar ("components").toVector().addElement (el)'
				TARGET_ET='xs:complexType'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> xs:complexType';
					'* -> xs:redefine/xs:complexType';
				}
				FILTER='! hasServiceAttr ("redefined") ||
getBooleanParam("integration.XMLSpy.workarounds.includeRedefinedComps")'
				SORTING='by-attr'
				SORTING_KEY={lpath='@name',ascending}
				<BODY>
					<SS_CALL>
						SS_NAME='Add Local Element & Attributes'
						PARAMS_EXPR='Array (stockSection.param, getAttrValue("name"))'
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='iterate by attribute groups'
				STEP_EXPR='el = CustomElement();

el.setAttr ("id", contextElement.id);
el.setAttr ("type", "attributeGroup");
el.setAttr ("name", getAttrValue("name"));
el.setAttr ("path", getAttrValue("name"));
el.setAttr ("path_prefix", thisContext.getVar ("path_prefix"));
el.setAttr ("redefinition", hasServiceAttr ("redefinition"));

thisContext.getVar ("components").toVector().addElement (el)'
				TARGET_ET='xs:attributeGroup'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> xs:attributeGroup';
					'* -> xs:redefine/xs:attributeGroup';
				}
				FILTER='! hasServiceAttr ("redefined") ||
getBooleanParam("integration.XMLSpy.workarounds.includeRedefinedComps")'
				SORTING='by-attr'
				SORTING_KEY={lpath='@name',ascending}
				<BODY>
					<SS_CALL>
						COND='! getBooleanParam("integration.XMLSpy.workarounds.includeAttributes.excludeAttributeGroups")'
						SS_NAME='Add Local Element & Attributes'
						PARAMS_EXPR='Array (stockSection.param, getAttrValue("name"))'
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='Add Local Element & Attributes'
		DESCR='param[0] - master XML document
param[1] - the XML path to the given component (represented by the context element)'
		MATCHING_ETS={'xs:%element';'xs:attributeGroup';'xs:complexType';'xs:group'}
		<BODY>
			<ELEMENT_ITER>
				DESCR='iterate by local attributes defined directly within this component (not within any nested elements)'
				COND='getBooleanParam("integration.XMLSpy.workarounds.includeAttributes")'
				STEP_EXPR='el = CustomElement();

el.setAttr ("id", contextElement.id);
el.setAttr ("type", "attribute");
el.setAttr ("name", getAttrValue("name"));
el.setAttr ("path", stockSection.params[1] + "/@" + getAttrValue("name"));
el.setAttr ("path_prefix", thisContext.getVar ("path_prefix"));

thisContext.getVar ("components").toVector().addElement (el)'
				TARGET_ET='xs:attribute%xs:attribute'
				SCOPE='advanced-location-rules'
				RULES={
					'xs:%element -> xs:complexType';
					'xs:%complexType -> xs:complexContent/(xs:extension|xs:restriction)/{baseQName = getAttrQNameValue("base");
mainXSD = stockSection.params.toElement();

findElementsByKey (
  "types",
  hasServiceAttr ("redefined") ? 
    HashKey (baseQName, getServiceAttr ("redefined")) : baseQName,
  BooleanQuery (
    checkElementByKey ("main-xsds", getXMLDocument().id, mainXSD)
  )
)}::xs:complexType',recursive;
					'xs:%complexType -> xs:simpleContent/(xs:extension|xs:restriction)/{baseQName = getAttrQNameValue("base");
mainXSD = stockSection.params.toElement();

findElementsByKey (
  "types",
  hasServiceAttr ("redefined") ? 
    HashKey (baseQName, getServiceAttr ("redefined")) : baseQName,
  BooleanQuery (
    checkElementByKey ("main-xsds", getXMLDocument().id, mainXSD)
  )
)}::xs:complexType',recursive;
					'xs:%complexType -> xs:complexContent/(xs:extension|xs:restriction)/(xs:attribute|xs:attributeGroup)',recursive;
					'xs:%complexType -> xs:simpleContent/(xs:extension|xs:restriction)/(xs:attribute|xs:attributeGroup)',recursive;
					'xs:%complexType -> (xs:attribute|xs:attributeGroup)',recursive;
					'xs:attributeGroup -> (xs:attribute|xs:attributeGroup)',recursive;
					'xs:%attributeGroupRef -> {qName = getAttrQNameValue("ref");
mainXSD = stockSection.params.toElement();

findElementsByKey (
  "attributeGroups",
  hasServiceAttr ("redefined") ?
    HashKey (qName, getServiceAttr ("redefined")) : qName,
  BooleanQuery (
    checkElementByKey ("main-xsds", getXMLDocument().id, mainXSD)
  )
)}::xs:attributeGroup',recursive;
				}
				FILTER_BY_KEY='((attrQName = getAttrQNameValue("ref")) != null) ? attrQName : 
QName ({
   schema = findAncestor ("xs:schema");

   (hasAttr("form") ? getAttrValue("form") : 
                      schema.getAttrValue ("attributeFormDefault")) == "qualified"
     ? schema.getServiceAttr("targetNamespace").toString() : ""
  },
  getAttrStringValue("name")
)'
				FILTER_BY_KEY_COND='true'
				FILTER='hasAttr("name")
&&
findPredecessorByType (
  "xs:%element | xs:complexType | xs:attributeGroup"
).id == iterator.contextElement.id'
			</ELEMENT_ITER>
			<ELEMENT_ITER>
				DESCR='iterate by local elements defined directly within this component (not within any nested elements)'
				STEP_EXPR='el = CustomElement();

el.setAttr ("id", contextElement.id);
el.setAttr ("type", "element");
el.setAttr ("name", getAttrValue("name"));
el.setAttr ("path", stockSection.params[1] + "/" + getAttrValue("name"));
el.setAttr ("path_prefix", thisContext.getVar ("path_prefix"));

thisContext.getVar ("components").toVector().addElement (el)'
				TARGET_ET='xs:%element'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> descendant::xs:%element[! hasAttr("ref") &&
{
  el = findPredecessorByType ("xs:%localElement");
  el == null || el.id == stockSection.contextElement.id
}]';
				}
				<BODY>
					<SS_CALL>
						SS_NAME='Add Local Element & Attributes'
						PARAMS_EXPR='Array (
  stockSection.params[0],
  stockSection.params[1] + "/" + getAttrValue("name")
)'
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
		</BODY>
	</FOLDER>
	<FOLDER>
		SS_NAME='Process Schema'
		DESCR='params[0]: master XML document'
		MATCHING_ET='xs:schema'
		INIT_EXPR='thisContext.setVar ("components", Vector())'
		FINISH_EXPR='spyProcessXSD (
  getXMLDocument().getAttrStringValue("xmlURI"),
  makeUniquePath (
    output.docFilesDir + "XMLSpy",
    makeFileName (getXMLDocument().getAttrStringValue("xmlName")),
    ""
  ),
  thisContext.getVar ("components").toVector()
)'
		<BODY>
			<SS_CALL>
				SS_NAME='Add Components'
				PARAMS_EXPR='stockSection.params'
			</SS_CALL>
			<ELEMENT_ITER>
				DESCR='iterate by all referenced schemas'
				TARGET_ET='xs:schema'
				SCOPE='advanced-location-rules'
				RULES={
					'* -> (xs:import|xs:include|xs:redefine)/{findElementsByKey ("loaded-schema", contextElement.id)}::xs:schema[// exclude second processing of the initial schema passed to this stock-section
// (which may occur when it is also imported from some of those schemas imported by it)

contextElement.id != stockSection.contextElement.id]',recursive;
				}
				SORTING='by-compound-key'
				SORTING_KEY={
					{expr='getPredecessorsUntilId (
  iterator.contextElement,
  false
).size()',ascending};
					{expr='el = contextElement.predecessor;

el.instanceOf ("xs:include") ? 1 : 
  el.instanceOf ("xs:redefine") ? 2 : 3',ascending};
				}
				<BODY>
					<SS_CALL>
						SS_NAME='Add Components'
						PARAMS_EXPR='stockSection.params'
					</SS_CALL>
				</BODY>
			</ELEMENT_ITER>
		</BODY>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='mS1waSs?wTOPr4TXeDGdP16azghf7nViFnAmMiKkPAc'
</DOCFLEX_TEMPLATE>