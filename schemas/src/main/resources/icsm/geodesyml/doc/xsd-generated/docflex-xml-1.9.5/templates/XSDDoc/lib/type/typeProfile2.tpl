<DOCFLEX_TEMPLATE VER='1.19'>
CREATED='2005-10-13 03:37:00'
LAST_UPDATE='2014-07-05 20:02:50'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-xsddoc2'
APP_NAME='DocFlex/XML XSDDoc'
APP_VER='2.8.1'
APP_AUTHOR='Copyright © 2005-2014 Filigris Works, Leonid Rudy Softwareprodukte. All rights reserved.'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ETS={'xs:complexType';'xs:simpleType'}
<TEMPLATE_PARAMS>
	PARAM={
		param.name='$mainXSD';
		param.type='GOMElement';
		param.defaultValue.expr='findElementByKey ("main-xsds", getXMLDocument().id)';
	}
	PARAM={
		param.name='$nsURI';
		param.title='type namespace URI';
		param.description='The namespace to which this type belongs';
		param.type='string';
	}
	PARAM={
		param.name='$scope';
		param.description='Indicates the scope of the main document for which this template is called:
<ul>
<li>"any" - unspecified</li>
<li>"namespace" - namespace overview</li>
<li>"schema" - schema overview</li>
</ul>';
		param.type='enum';
		param.enum.values='any;namespace;schema';
	}
	PARAM={
		param.name='$usageCount';
		param.description='number of locations where this type is used';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey ("type-usage", contextElement.id)';
		param.hidden='true';
	}
	PARAM={
		param.name='$contentModelKey';
		param.title='map key for "content-model-attributes", "content-model-elements"';
		param.description='The key for "content-model-attributes" and "content-model-elements" maps to find items associated with this component';
		param.type='Object';
		param.defaultValue.expr='contextElement.id';
	}
	PARAM={
		param.name='$attributeCount';
		param.title='number of all attributes';
		param.description='total number of attributes declared for this component';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "content-model-attributes", 
  getParam("$contentModelKey"),
  BooleanQuery (
   ! instanceOf ("xs:anyAttribute") &&
   getAttrValue("use") != "prohibited"
  )
)';
		param.hidden='true';
	}
	PARAM={
		param.name='$attributeWildcardCount';
		param.title='number of all attr. wildcards';
		param.description='total number of attribute wildcards declared for this component';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "content-model-attributes", 
  getParam("$contentModelKey"),
  BooleanQuery (instanceOf ("xs:anyAttribute"))
)';
		param.hidden='true';
	}
	PARAM={
		param.name='$ownAttributeCount';
		param.title='number of attributes defined in this component';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "content-model-attributes", 
  getParam("$contentModelKey"),
  BooleanQuery (
    ! instanceOf ("xs:anyAttribute") &&
    getAttrValue("use") != "prohibited" &&
    findPredecessorByType("xs:%element|xs:complexType|xs:attributeGroup").id
    == rootElement.id
  )
)';
		param.hidden='true';
	}
	PARAM={
		param.name='$ownAttributeWildcardCount';
		param.title='number of attr. wildcards defined in this component';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "content-model-attributes", 
  getParam("$contentModelKey"),
  BooleanQuery (
    instanceOf ("xs:anyAttribute") &&
    findPredecessorByType("xs:%element|xs:complexType|xs:attributeGroup").id
    == rootElement.id
  )
)';
		param.hidden='true';
	}
	PARAM={
		param.name='$ownAttributeProhibitionCount';
		param.title='number of attr. prohibitions specified in this component';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "content-model-attributes", 
  getParam("$contentModelKey"),
  BooleanQuery (
    getAttrValue("use") == "prohibited" &&
    findPredecessorByType("xs:%element|xs:complexType|xs:attributeGroup").id
    == rootElement.id
  )
)';
		param.hidden='true';
	}
	PARAM={
		param.name='$elementCount';
		param.title='number of all content elements';
		param.description='total number of content elements declared for this component';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "content-model-elements", 
  getParam("$contentModelKey"),
  BooleanQuery (! instanceOf ("xs:any"))
)';
		param.hidden='true';
	}
	PARAM={
		param.name='$elementWildcardCount';
		param.title='number of all element wildcards';
		param.description='total number of element wildcards declared for this component';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "content-model-elements", 
  getParam("$contentModelKey"),
  BooleanQuery (instanceOf ("xs:any"))
)';
		param.hidden='true';
	}
	PARAM={
		param.name='$ownElementCount';
		param.title='number of elements defined in this component';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "content-model-elements", 
  getParam("$contentModelKey"),
  BooleanQuery (
    ! instanceOf ("xs:any") &&
    findPredecessorByType("xs:%element|xs:complexType|xs:group").id 
    == rootElement.id
  )
)';
		param.hidden='true';
	}
	PARAM={
		param.name='$ownElementWildcardCount';
		param.title='number of element wildcards defined in this component';
		param.type='integer';
		param.defaultValue.expr='countElementsByKey (
  "content-model-elements", 
  getParam("$contentModelKey"),
  BooleanQuery (
    instanceOf ("xs:any") &&
    findPredecessorByType("xs:%element|xs:complexType|xs:group").id 
    == rootElement.id
  )
)';
		param.hidden='true';
	}
	PARAM={
		param.name='doc.comp';
		param.title='Component Documentation';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='doc.comp.profile.namespace';
		param.title='Namespace';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.content';
		param.title='Content';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.abstract';
		param.title='Abstract';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.block';
		param.title='Block';
		param.type='enum';
		param.enum.values='any;non_default;none';
	}
	PARAM={
		param.name='doc.comp.profile.final';
		param.title='Final';
		param.type='enum';
		param.enum.values='any;non_default;none';
	}
	PARAM={
		param.name='doc.comp.profile.defined';
		param.title='Defined';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.includes';
		param.title='Includes';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.redefines';
		param.title='Redefines';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.redefined';
		param.title='Redefined';
		param.type='boolean';
	}
	PARAM={
		param.name='doc.comp.profile.used';
		param.title='Used';
		param.type='boolean';
	}
	PARAM={
		param.name='show';
		param.title='Show';
		param.title.style.bold='true';
		param.group='true';
		param.group.defaultState='expanded';
	}
	PARAM={
		param.name='show.linkTitle';
		param.title='Link Titles (Tooltips)';
		param.type='boolean';
	}
	PARAM={
		param.name='fmt';
		param.title='Formatting';
		param.title.style.bold='true';
		param.group='true';
	}
	PARAM={
		param.name='fmt.page.refs';
		param.title='Generate page references';
		param.type='boolean';
		param.defaultValue='true';
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
	CHAR_STYLE={
		style.name='Mono';
		style.id='cs3';
		text.font.name='Courier New';
		text.font.size='9';
	}
	CHAR_STYLE={
		style.name='Mono (Small)';
		style.id='cs4';
		text.font.name='Courier New';
		text.font.size='8';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s1';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Page Reference';
		style.id='cs5';
		text.font.name='Courier New';
		text.font.size='8';
	}
	CHAR_STYLE={
		style.name='Property Note';
		style.id='cs6';
		text.font.name='Tahoma';
		text.font.size='8';
		text.font.style.italic='true';
	}
	CHAR_STYLE={
		style.name='Property Title (Font)';
		style.id='cs7';
		text.font.size='8';
		text.font.style.bold='true';
	}
	CHAR_STYLE={
		style.name='Property Value (Font)';
		style.id='cs8';
		text.font.name='Verdana';
		text.font.size='8';
	}
</STYLES>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs2';
}
<ROOT>
	<AREA_SEC>
		COND='getBooleanParam("doc.comp.profile.namespace")'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Namespace:'
						FMT={
							text.style='cs7';
						}
					</TEXT_CTRL>
					<DELIMITER>
						FMT={
							text.style='cs3';
						}
					</DELIMITER>
					<DATA_CTRL>
						FORMULA='(ns = getParam("$nsURI")) != "" ? ns : "{no namespace}"'
						FMT={
							text.style='cs4';
						}
						<DOC_HLINK>
							HKEYS={
								'getStringParam("$nsURI")';
								'"detail"';
							}
						</DOC_HLINK>
					</DATA_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='getBooleanParam("doc.comp.profile.content")'
		MATCHING_ET='xs:complexType'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Content:'
						FMT={
							text.style='cs7';
						}
					</TEXT_CTRL>
					<DELIMITER>
						FMT={
							text.style='cs3';
						}
					</DELIMITER>
					<PANEL>
						FMT={
							ctrl.size.width='441';
							text.style='cs8';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='text';
									txtfl.delimiter.text=', ';
								}
								<CTRLS>
									<TEMPLATE_CALL_CTRL>
										TEMPLATE_FILE='../component/contentType.tpl'
									</TEMPLATE_CALL_CTRL>
									<PANEL>
										COND='getIntParam("$attributeCount") > 0'
										FMT={
											ctrl.size.width='201';
											ctrl.size.height='38.3';
											txtfl.delimiter.type='nbsp';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<DATA_CTRL>
														FORMULA='getIntParam("$attributeCount")'
													</DATA_CTRL>
													<TEXT_CTRL>
														COND='getIntParam("$attributeCount") == 1'
														TEXT='attribute'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"attribute-detail"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
													<TEXT_CTRL>
														COND='getIntParam("$attributeCount") > 1'
														TEXT='attributes'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"attribute-detail"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<PANEL>
										COND='getIntParam("$attributeWildcardCount") > 0'
										FMT={
											ctrl.size.width='80.3';
											ctrl.size.height='38.3';
											txtfl.delimiter.type='nbsp';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='attr.'
													</TEXT_CTRL>
													<TEXT_CTRL>
														TEXT='wildcard'
														<DOC_HLINK>
															DESCR='try to link to wildcard\'s detail by this component;
otherwise, link to wildcard\'s details by its parent component (where the attribute is defined);
if not found still, link to the XML schema source location, where this wildcard is defined'
															CONTEXT_ELEMENT_EXPR='findElementByKey (
  "content-model-attributes", 
  getParam("$contentModelKey"),
  BooleanQuery (instanceOf ("xs:anyAttribute"))
)'
															MATCHING_ET='xs:anyAttribute'
															TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection ("Wildcard Info") : ""'
															HKEYS={
																'contextElement.id';
																'Array ("local", "def", "xml-source-location")';
																'Array (rootElement.id, NoKey())';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<PANEL>
										COND='getIntParam("$elementCount") > 0'
										FMT={
											ctrl.size.width='198.8';
											ctrl.size.height='38.3';
											txtfl.delimiter.type='nbsp';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<DATA_CTRL>
														FORMULA='getIntParam("$elementCount")'
													</DATA_CTRL>
													<TEXT_CTRL>
														COND='getIntParam("$elementCount") == 1'
														TEXT='element'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"content-element-detail"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
													<TEXT_CTRL>
														COND='getIntParam("$elementCount") > 1'
														TEXT='elements'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"content-element-detail"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<PANEL>
										COND='getIntParam("$elementWildcardCount") > 0'
										FMT={
											ctrl.size.width='253.5';
											ctrl.size.height='38.3';
											txtfl.delimiter.type='nbsp';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<DATA_CTRL>
														COND='getIntParam("$elementWildcardCount") > 1'
														FORMULA='getIntParam("$elementWildcardCount")'
													</DATA_CTRL>
													<TEXT_CTRL>
														TEXT='elem.'
													</TEXT_CTRL>
													<TEXT_CTRL>
														COND='getIntParam("$elementWildcardCount") == 1'
														TEXT='wildcard'
														<DOC_HLINK>
															DESCR='try to link to the wildcard\'s details, first, within the documentation of the current component (for which this content model representation is generated);
if not found, link to such details in the documentation of its parent component (where this element reference is defined);
finally, if not found still, try to link to the location in the XML schema source, where this wildcard is defined'
															CONTEXT_ELEMENT_EXPR='findElementByKey (
  "content-model-elements", 
  getParam("$contentModelKey"),
  BooleanQuery (instanceOf ("xs:any"))
)'
															MATCHING_ET='xs:any'
															TITLE_EXPR='getBooleanParam("show.linkTitle") ?
  callStockSection ("Wildcard Info") : ""'
															HKEYS={
																'contextElement.id';
																'Array ("local", "def", "xml-source-location")';
																'Array (rootElement.id, NoKey())';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
													<TEXT_CTRL>
														COND='getIntParam("$elementWildcardCount") > 1'
														TEXT='wildcards'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"content-element-wildcard"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</PANEL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='getBooleanParam("doc.comp.profile.abstract")
&&
instanceOf ("xs:complexType") && getAttrBooleanValue("abstract")'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Abstract:'
						FMT={
							text.style='cs7';
						}
					</TEXT_CTRL>
					<DELIMITER>
						FMT={
							text.style='cs3';
						}
					</DELIMITER>
					<TEXT_CTRL>
						TEXT='(cannot be assigned directly to elements used in instance XML documents)'
						FMT={
							text.style='cs6';
						}
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='! hasParamValue("doc.comp.profile.block", "none")
&&
instanceOf ("xs:complexType") && 
(
  getAttrValue("block") != null || 
  hasParamValue("doc.comp.profile.block", "any") &&
    findAncestor("xs:schema").getAttrValue ("blockDefault") != null
)'
		FMT={
			trow.cell.align.vert='Top';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Block:'
						FMT={
							text.style='cs7';
							text.option.renderNLs='true';
						}
					</TEXT_CTRL>
					<DELIMITER>
						FMT={
							text.style='cs3';
						}
					</DELIMITER>
					<TEMPLATE_CALL_CTRL>
						TEMPLATE_FILE='typeBlockAttrInfo.tpl'
						FMT={
							text.style='cs8';
						}
					</TEMPLATE_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='! hasParamValue("doc.comp.profile.final", "none") &&
(
  getAttrValue("final") != null
  ||
  instanceOf ("xs:complexType") &&
    hasParamValue("doc.comp.profile.final", "any") &&
    findAncestor("xs:schema").getAttrValue ("finalDefault") != null
)'
		FMT={
			trow.cell.align.vert='Top';
		}
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Final:'
						FMT={
							text.style='cs7';
							text.option.renderNLs='true';
						}
					</TEXT_CTRL>
					<DELIMITER>
						FMT={
							text.style='cs3';
						}
					</DELIMITER>
					<TEMPLATE_CALL_CTRL>
						TEMPLATE_FILE='typeFinalAttrInfo.tpl'
						FMT={
							text.style='cs8';
						}
					</TEMPLATE_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='getBooleanParam("doc.comp.profile.defined")'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Defined:'
						FMT={
							text.style='cs7';
						}
					</TEXT_CTRL>
					<DELIMITER>
						FMT={
							text.style='cs3';
						}
					</DELIMITER>
					<PANEL>
						FMT={
							ctrl.size.width='321.8';
							text.style='cs8';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='globally'
									</TEXT_CTRL>
									<PANEL>
										COND='! hasParamValue("$scope", "schema")'
										FMT={
											ctrl.size.width='153.8';
											ctrl.size.height='38.3';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='in'
													</TEXT_CTRL>
													<SS_CALL_CTRL>
														SS_NAME='Schema Name'
													</SS_CALL_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<PANEL>
										COND='findHyperTarget (Array (
  contextElement.id,
  Array ("xml-source", "xml-source-location")
)) != null'
										FMT={
											ctrl.size.width='290.3';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<DELIMITER>
														FMT={
															txtfl.delimiter.type='text';
															txtfl.delimiter.text='; ';
														}
													</DELIMITER>
													<TEXT_CTRL>
														TEXT='see'
													</TEXT_CTRL>
													<TEXT_CTRL>
														TEXT='XML source'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'Array ("xml-source", "xml-source-location")';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
													<PANEL>
														COND='output.format.supportsPageRefs && 
getBooleanParam("fmt.page.refs")'
														FMT={
															ctrl.size.width='186';
															ctrl.size.height='38.3';
															txtfl.delimiter.type='none';
														}
														<AREA>
															<CTRL_GROUP>
																<CTRLS>
																	<DELIMITER>
																		FMT={
																			txtfl.delimiter.type='nbsp';
																		}
																	</DELIMITER>
																	<TEXT_CTRL>
																		TEXT='['
																		FMT={
																			text.style='cs5';
																		}
																	</TEXT_CTRL>
																	<DATA_CTRL>
																		DOCFIELD='page-htarget'
																		FMT={
																			ctrl.option.noHLinkFmt='true';
																			text.style='cs5';
																			text.hlink.fmt='none';
																		}
																		<DOC_HLINK>
																			HKEYS={
																				'contextElement.id';
																				'Array ("xml-source", "xml-source-location")';
																			}
																		</DOC_HLINK>
																	</DATA_CTRL>
																	<TEXT_CTRL>
																		TEXT=']'
																		FMT={
																			text.style='cs5';
																		}
																	</TEXT_CTRL>
																</CTRLS>
															</CTRL_GROUP>
														</AREA>
													</PANEL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</PANEL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='getBooleanParam("doc.comp.profile.includes") &&
{
 count = getIntParam("$ownAttributeCount") +
         getIntParam("$ownAttributeWildcardCount") +
         getIntParam("$ownElementCount") +
         getIntParam("$ownElementWildcardCount");

 count > 0 ||
 getIntParam("$ownAttributeProhibitionCount") > 0
 ? { setVar ("count", count); true } : false;
}'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Includes:'
						FMT={
							text.style='cs7';
						}
					</TEXT_CTRL>
					<DELIMITER>
						FMT={
							text.style='cs3';
						}
					</DELIMITER>
					<PANEL>
						FMT={
							ctrl.size.width='345.8';
							text.style='cs8';
						}
						<AREA>
							<CTRL_GROUP>
								FMT={
									txtfl.delimiter.type='text';
									txtfl.delimiter.text=', ';
								}
								<CTRLS>
									<TEXT_CTRL>
										COND='getVar("count").toInt() == 1'
										TEXT='definition'
									</TEXT_CTRL>
									<TEXT_CTRL>
										COND='getVar("count").toInt() > 1'
										TEXT='definitions'
									</TEXT_CTRL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='text';
											txtfl.delimiter.text=' of ';
										}
									</DELIMITER>
									<PANEL>
										COND='getIntParam("$ownAttributeCount") > 0'
										FMT={
											ctrl.size.width='212.3';
											ctrl.size.height='38.3';
											txtfl.delimiter.type='nbsp';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<DATA_CTRL>
														COND='getIntParam("$ownAttributeCount") > 0'
														FORMULA='getIntParam("$ownAttributeCount")'
													</DATA_CTRL>
													<TEXT_CTRL>
														COND='getIntParam("$ownAttributeCount") == 1'
														TEXT='attribute'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"attribute-def"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
													<TEXT_CTRL>
														COND='getIntParam("$ownAttributeCount") > 1'
														TEXT='attributes'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"attribute-def"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<PANEL>
										COND='getIntParam("$ownAttributeWildcardCount") > 0'
										FMT={
											ctrl.size.width='80.3';
											ctrl.size.height='38.3';
											txtfl.delimiter.type='nbsp';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<TEXT_CTRL>
														TEXT='attr.'
													</TEXT_CTRL>
													<TEXT_CTRL>
														TEXT='wildcard'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"attribute-wildcard-def"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<PANEL>
										COND='getIntParam("$ownElementCount") > 0'
										FMT={
											ctrl.size.width='210.8';
											ctrl.size.height='38.3';
											txtfl.delimiter.type='nbsp';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<DATA_CTRL>
														FORMULA='getIntParam("$ownElementCount")'
													</DATA_CTRL>
													<TEXT_CTRL>
														COND='getIntParam("$ownElementCount") == 1'
														TEXT='element'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"content-element-def"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
													<TEXT_CTRL>
														COND='getIntParam("$ownElementCount") > 1'
														TEXT='elements'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"content-element-def"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<PANEL>
										COND='getIntParam("$ownElementWildcardCount") > 0'
										FMT={
											ctrl.size.width='261';
											ctrl.size.height='38.3';
											txtfl.delimiter.type='nbsp';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<DATA_CTRL>
														COND='getIntParam("$ownElementWildcardCount") > 1'
														FORMULA='getIntParam("$ownElementWildcardCount")'
													</DATA_CTRL>
													<TEXT_CTRL>
														TEXT='elem.'
													</TEXT_CTRL>
													<TEXT_CTRL>
														COND='getIntParam("$ownElementWildcardCount") == 1'
														TEXT='wildcard'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"content-element-wildcard-def"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
													<TEXT_CTRL>
														COND='getIntParam("$ownElementWildcardCount") > 1'
														TEXT='wildcards'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"content-element-wildcard-def"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<PANEL>
										COND='getIntParam("$ownAttributeProhibitionCount") > 0'
										FMT={
											ctrl.size.width='288';
											ctrl.size.height='38.3';
											txtfl.delimiter.type='nbsp';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<DELIMITER>
														FMT={
															txtfl.delimiter.type='text';
															txtfl.delimiter.text='; ';
														}
													</DELIMITER>
													<DATA_CTRL>
														FORMULA='getIntParam("$ownAttributeProhibitionCount")'
													</DATA_CTRL>
													<TEXT_CTRL>
														TEXT='attr.'
													</TEXT_CTRL>
													<TEXT_CTRL>
														COND='getIntParam("$ownAttributeProhibitionCount") == 1'
														TEXT='probition'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"attribute-prohibition"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
													<TEXT_CTRL>
														COND='getIntParam("$ownAttributeProhibitionCount") > 1'
														TEXT='prohibitions'
														<DOC_HLINK>
															HKEYS={
																'contextElement.id';
																'"attribute-prohibition"';
															}
														</DOC_HLINK>
													</TEXT_CTRL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</PANEL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='getBooleanParam("doc.comp.profile.redefines")

// see also "Context Element" tab'
		CONTEXT_ELEMENT_EXPR='findElementByKey ("redefined-component", contextElement.id)'
		MATCHING_ET='<ANY>'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Redefines:'
						FMT={
							text.style='cs7';
						}
					</TEXT_CTRL>
					<DELIMITER>
						FMT={
							text.style='cs3';
						}
					</DELIMITER>
					<PANEL>
						FMT={
							ctrl.size.width='429.8';
							ctrl.size.height='38.3';
							text.style='cs8';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<DATA_CTRL>
										FORMULA='toXMLName (getStringParam("$nsURI"), getAttrStringValue("name"))'
										<DOC_HLINK>
											HKEYS={
												'contextElement.id';
												'Array ("detail", "xml-source-location")';
											}
										</DOC_HLINK>
									</DATA_CTRL>
									<TEXT_CTRL>
										TEXT='in'
									</TEXT_CTRL>
									<SS_CALL_CTRL>
										SS_NAME='Schema Name'
									</SS_CALL_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</PANEL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='getBooleanParam("doc.comp.profile.redefined")
&&
checkElementsByKey ("redefining-components", contextElement.id)'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Redefined:'
						FMT={
							text.style='cs7';
						}
					</TEXT_CTRL>
					<DELIMITER>
						FMT={
							text.style='cs3';
						}
					</DELIMITER>
					<SS_CALL_CTRL>
						SS_NAME='Redefining Components'
						FMT={
							text.style='cs8';
						}
					</SS_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='getBooleanParam("doc.comp.profile.used") &&
getIntParam("$usageCount") == 0'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Used:'
						FMT={
							text.style='cs7';
						}
					</TEXT_CTRL>
					<DELIMITER>
						FMT={
							text.style='cs3';
						}
					</DELIMITER>
					<TEXT_CTRL>
						TEXT='never'
						FMT={
							text.style='cs8';
						}
					</TEXT_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
	<AREA_SEC>
		COND='getBooleanParam("doc.comp.profile.used") &&
getIntParam("$usageCount") > 0'
		<AREA>
			<CTRL_GROUP>
				<CTRLS>
					<TEXT_CTRL>
						TEXT='Used:'
						FMT={
							text.style='cs7';
						}
					</TEXT_CTRL>
					<DELIMITER>
						FMT={
							text.style='cs3';
						}
					</DELIMITER>
					<PANEL>
						FMT={
							ctrl.size.width='215.3';
							text.style='cs8';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<TEXT_CTRL>
										TEXT='at'
									</TEXT_CTRL>
									<DATA_CTRL>
										FORMULA='getIntParam("$usageCount")'
									</DATA_CTRL>
									<TEXT_CTRL>
										COND='getIntParam("$usageCount") == 1'
										TEXT='location'
										<DOC_HLINK>
											HKEYS={
												'contextElement.id';
												'"usage-locations"';
											}
										</DOC_HLINK>
									</TEXT_CTRL>
									<TEXT_CTRL>
										COND='getIntParam("$usageCount") > 1'
										TEXT='locations'
										<DOC_HLINK>
											HKEYS={
												'contextElement.id';
												'"usage-locations"';
											}
										</DOC_HLINK>
									</TEXT_CTRL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</PANEL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</ROOT>
<STOCK_SECTIONS>
	<ELEMENT_ITER>
		SS_NAME='Redefining Components'
		TARGET_ET='<ANY>'
		SCOPE='custom'
		ELEMENT_ENUM_EXPR='findElementsByKey ("redefining-components", contextElement.id)'
		FMT={
			sec.outputStyle='text-par';
			txtfl.delimiter.type='text';
			txtfl.delimiter.text=', ';
		}
		<BODY>
			<AREA_SEC>
				<AREA>
					<CTRL_GROUP>
						FMT={
							txtfl.delimiter.type='space';
						}
						<CTRLS>
							<TEXT_CTRL>
								TEXT='with'
							</TEXT_CTRL>
							<DATA_CTRL>
								FORMULA='toXMLName (getStringParam("$nsURI"), getAttrStringValue("name"))'
								<DOC_HLINK>
									HKEYS={
										'contextElement.id';
										'"detail"';
									}
								</DOC_HLINK>
							</DATA_CTRL>
							<TEXT_CTRL>
								TEXT='in'
							</TEXT_CTRL>
							<SS_CALL_CTRL>
								SS_NAME='Schema Name'
							</SS_CALL_CTRL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
		</BODY>
	</ELEMENT_ITER>
	<TEMPLATE_CALL>
		SS_NAME='Schema Name'
		TEMPLATE_FILE='../schema/schemaName.tpl'
	</TEMPLATE_CALL>
	<TEMPLATE_CALL>
		SS_NAME='Wildcard Info'
		MATCHING_ETS={'xs:any';'xs:anyAttribute'}
		TEMPLATE_FILE='../component/wildcard.tpl'
		PASSED_PARAMS={
			'$brackets','false';
		}
	</TEMPLATE_CALL>
</STOCK_SECTIONS>
CHECKSUM='XvNiSBx3tuV+RHQFfo32z6JJj4Otsmo5pxCLJh9FQ7U'
</DOCFLEX_TEMPLATE>