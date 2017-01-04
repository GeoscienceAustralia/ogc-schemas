<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2008-11-17 02:24:18'
LAST_UPDATE='2014-07-05 20:02:58'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-wsdldoc'
APP_NAME='DocFlex/XML WSDLDoc'
APP_VER='1.0.b'
APP_AUTHOR='Copyright © 2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
FEATURE_TYPE='pro'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='wsdldoc'
ROOT_ETS={'xs:complexType';'xs:simpleType'}
DESCR='Documents \'final\' attribute of a complex or simple type'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$finalAttrValues';
		param.title='The actual values of \'final\' attribute';
		param.type='string';
		param.list='true';
		param.defaultValue.expr='hasAttr ("final") ? getAttrValues ("final") :
  instanceOf("xs:complexType") ?
     findAncestor("xs:schema").getAttrValues ("finalDefault") : null';
		param.fixed='true';
	}
	PARAM={
		param.name='doc.xsd.comp';
		param.title='Schema Component';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.final.value';
		param.title='Value';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.xsd.comp.profile.final.meaning';
		param.title='Meaning';
		param.type='boolean';
	}
</TEMPLATE_PARAMS>
<STYLES>
	CHAR_STYLE={
		style.name='Code Smaller';
		style.id='cs1';
		text.font.name='Courier New';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs2';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs3';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s1';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Property Note';
		style.id='cs4';
		text.font.name='Tahoma';
		text.font.size='8';
		text.font.style.italic='true';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs3';
}
<ROOT>
	<AREA_SEC>
		COND='getBooleanParam("doc.xsd.comp.profile.final.value")'
		FMT={
			text.style='cs1';
			txtfl.delimiter.type='none';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='"'
					</TEXT_CTRL>
					<DATA_CTRL>
						FORMULA='getArrayParam("$finalAttrValues")'
						FMT={
							txtfl.delimiter.text=' ';
						}
					</DATA_CTRL>
					<TEXT_CTRL>
						TEXT='"'
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<FOLDER>
		DESCR='meaning'
		COND='getBooleanParam("doc.xsd.comp.profile.final.meaning")'
		FMT={
			text.style='cs4';
			txtfl.delimiter.type='none';
		}
		<BODY>
			<AREA_SEC>
				DESCR='#all'
				COND='getArrayParam("$finalAttrValues").contains ("#all")'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='(blocks all further derivations of this type)'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<AREA_SEC>
				DESCR='extension, restriction, list, union'
				COND='values = getArrayParam("$finalAttrValues");

derivations = Vector();

values.contains ("extension") ?
  derivations.addElement ("extension");

values.contains ("restriction") ?
  derivations.addElement ("restriction");

values.contains ("list") ?
  derivations.addElement ("list");

values.contains ("union") ?
  derivations.addElement ("union");

derivations.size() > 0 ? 
{
  setVar ("blocked_derivations", derivations);
  true
} : false'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<TEXT_CTRL>
								TEXT='(blocks any further derivations of this type by '
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='mergeStrings (
  getVar ("blocked_derivations").toVector(),
  ", ", " or "
)'
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT=')'
							</TEXT_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</FOLDER>
</ROOT>
CHECKSUM='EYz8WE2qPARHhj1FZ7f3OhvCZTLM9L1w7HE9gpNzDI8'
</DOCFLEX_TEMPLATE>