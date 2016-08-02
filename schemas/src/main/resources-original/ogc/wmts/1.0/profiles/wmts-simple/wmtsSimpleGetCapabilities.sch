<?xml version="1.0" encoding="UTF-8"?>
<iso:schema
	xmlns:iso="http://purl.oclc.org/dsdl/schematron"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	schemaVersion="ISO19757-3" 
	xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ../../../../sch/2006/schematron.xsd">

    <!-- version="1.0.0" updated 2016-01-22 -->

    <!-- OGC WMTS Simple Profile is an OGC Standard.
         Copyright (c) 2016 Open Geospatial Consortium.
         To obtain additional rights of use, visit http://www.opengeospatial.org/legal/.
    -->

    <iso:title>Schematron validation for OWS context</iso:title>
    <iso:ns prefix="wmts" uri="http://www.opengis.net/wmts/1.0"/>   
    <iso:ns prefix="ows" uri="http://www.opengis.net/ows/1.1"/>
    <iso:ns prefix="xlink" uri="http://www.w3.org/1999/xlink"/>

    <iso:pattern name="WMTS Simple validation" id="wmts_simple">
        <iso:rule context="/wmts:Capabilities/ows:ServiceIdentification">
 			<iso:assert test="ows:Profile='http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile' or ows:Profile='http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84'">A WMTS Simple shall declare support for one of the following profiles: "http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile" or "http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84".</iso:assert>
		</iso:rule>		
		<iso:rule context="/wmts:Capabilities">
				<!--iso:assert test="ows:ServiceIdentification/ows:Profile!='http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile' or wmts:Contents/wmts:TileMatrixSet[ows:Identifier='WorldWebMercatorQuad']/ows:Identifier">A WMTS Simple following the "http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile" profiles shall declare a TileMatrixSet with identifier="WorldWebMercatorQuad".</iso:assert>
				<iso:assert test="ows:ServiceIdentification/ows:Profile!='http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84' or wmts:Contents/wmts:TileMatrixSet[ows:Identifier='WorldCRS84Quad']/ows:Identifier">A WMTS Simple following the "http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84" profile shall declare a TileMatrixSet with identifier="WorldCRS84Quad".</iso:assert-->
				<iso:assert test="wmts:ServiceMetadataURL/@xlink:href">A WMTS Simple shall advertise a URL template to get the ServiceMetadata document.</iso:assert>
		</iso:rule>
		<iso:rule context="/wmts:Capabilities/wmts:Contents">
			<iso:assert test="count(wmts:Layer/wmts:ResourceURL[@resourceType='simpleProfileTile']/@template)+count(wmts:Layer/wmts:ResourceURL[@resourceType='simpleProfileCRS84Tile']/@template)>0">A WMTS Simple shall advertise at least a layer URL template of resourceType="simpleProfileTile" or resourceType="simpleProfileTileCRS84".</iso:assert>
			<iso:assert test="/wmts:Capabilities/ows:ServiceIdentification/ows:Profile!='http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile' or count(wmts:Layer/wmts:ResourceURL[@resourceType='simpleProfileTile']/@template)>0">A WMTS Simple following the "http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile" profile shall provide a template of the type 'simpleProfileTile' at least in one layer.</iso:assert>
			<iso:assert test="/wmts:Capabilities/ows:ServiceIdentification/ows:Profile!='http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84' or count(wmts:Layer/wmts:ResourceURL[@resourceType='simpleProfileCRS84Tile']/@template)>0">A WMTS Simple following the "http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84" profile shall provide a template of the type 'simpleProfileCRS84Tile' at least in one layer.</iso:assert>
		</iso:rule>
		<iso:rule context="/wmts:Capabilities/wmts:Contents/wmts:Layer[wmts:ResourceURL/@resourceType='simpleProfileTile'] | /wmts:Capabilities/wmts:Contents/wmts:Layer[wmts:ResourceURL/@resourceType='simpleProfileCRS84Tile']">
  			  <iso:assert test="count(wmts:ResourceURL[@resourceType='simpleProfileTile'])=0 or count(/wmts:Capabilities/wmts:Contents/wmts:TileMatrixSet[ows:Identifier='WorldWebMercatorQuad'])=0 or count(wmts:TileMatrixSetLink[wmts:TileMatrixSet='WorldWebMercatorQuad'])>0">A WMTS Simple following the "http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile" and a layer with a resourceType 'simpleProfileTile' in the URL template shall declare support to a TileMatrixSet with identifier="WorldWebMercatorQuad" by linking it in the wmts:TileMatrixSetLink element. Error in layer "<iso:value-of select="ows:Identifier" />"</iso:assert>
  			  <iso:assert test="count(wmts:ResourceURL[@resourceType='simpleProfileCRS84Tile'])=0 or count(/wmts:Capabilities/wmts:Contents/wmts:TileMatrixSet[ows:Identifier='WorldCRS84Quad'])=0 or count(wmts:TileMatrixSetLink[wmts:TileMatrixSet='WorldCRS84Quad'])>0">A WMTS Simple following the "http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile" and a layer with a resourceType 'simpleProfileCRS84Tile' in the URL template shall declare support to a TileMatrixSet with identifier="WorldCRS84Quad" by linking it in the wmts:TileMatrixSetLink element. Error in layer "<iso:value-of select="ows:Identifier" />"</iso:assert>
			  <iso:assert test="not(contains(wmts:ResourceURL[@resourceType='simpleProfileTile']/@template,'{TileMatrixSet}'))">{TileMatrixSet} is not allowed for a WMTS Simple with a URL template with resourceType 'simpleProfileTile'. Error in layer "<iso:value-of select="ows:Identifier" />".</iso:assert>
			  <iso:assert test="not(contains(wmts:ResourceURL[@resourceType='simpleProfileTile']/@template,'{style}'))">{style} is not allowed for a WMTS Simple with a URL template with resourceType 'simpleProfileTile'. Error in layer "<iso:value-of select="ows:Identifier" />".</iso:assert>
			  <iso:assert test="count(wmts:ResourceURL[@resourceType='simpleProfileTile'])=0 or contains(wmts:ResourceURL[@resourceType='simpleProfileTile']/@template,'{TileMatrix}')">{TileMatrix} shall be included for a WMTS Simple with a URL template with resourceType 'simpleProfileTile'. Error in layer "<iso:value-of select="ows:Identifier" />".</iso:assert>
			  <iso:assert test="count(wmts:ResourceURL[@resourceType='simpleProfileTile'])=0 or contains(wmts:ResourceURL[@resourceType='simpleProfileTile']/@template,'{TileRow}')">{TileRow} is not allowed for a WMTS Simple with a URL template with resourceType 'simpleProfileTile'. Error in layer "<iso:value-of select="ows:Identifier" />".</iso:assert>
			  <iso:assert test="count(wmts:ResourceURL[@resourceType='simpleProfileTile'])=0 or contains(wmts:ResourceURL[@resourceType='simpleProfileTile']/@template,'{TileCol}')">{TileCol} is not allowed for a WMTS Simple with a URL template with resourceType 'simpleProfileTile'. Error in layer "<iso:value-of select="ows:Identifier" />".</iso:assert>
			  <iso:assert test="not(contains(wmts:ResourceURL[@resourceType='simpleProfileCRS84Tile']/@template,'{TileMatrixSet}'))">{TileMatrixSet} is not allowed for a WMTS Simple with a URL template with resourceType 'simpleProfileCRS84Tile'. Error in layer "<iso:value-of select="ows:Identifier" />".</iso:assert>
			  <iso:assert test="not(contains(wmts:ResourceURL[@resourceType='simpleProfileCRS84Tile']/@template,'{style}'))">{style} is not allowed for a WMTS Simple with a URL template with resourceType 'simpleProfileCRS84Tile'. Error in layer "<iso:value-of select="ows:Identifier" />".</iso:assert>				
			  <iso:assert test="count(wmts:ResourceURL[@resourceType='simpleProfileCRS84Tile'])=0 or contains(wmts:ResourceURL[@resourceType='simpleProfileCRS84Tile']/@template,'{TileMatrix}')">{TileMatrix} shall be included for a WMTS Simple with a URL template with resourceType 'simpleProfileCRS84Tile'. Error in layer "<iso:value-of select="ows:Identifier" />".</iso:assert>
			  <iso:assert test="count(wmts:ResourceURL[@resourceType='simpleProfileCRS84Tile'])=0 or contains(wmts:ResourceURL[@resourceType='simpleProfileCRS84Tile']/@template,'{TileRow}')">{TileRow} is not allowed for a WMTS Simple with a URL template with resourceType 'simpleProfileCRS84Tile'. Error in layer "<iso:value-of select="ows:Identifier" />".</iso:assert>
			  <iso:assert test="count(wmts:ResourceURL[@resourceType='simpleProfileCRS84Tile'])=0 or contains(wmts:ResourceURL[@resourceType='simpleProfileCRS84Tile']/@template,'{TileCol}')">{TileCol} is not allowed for a WMTS Simple with a URL template with resourceType 'simpleProfileCRS84Tile'. Error in layer "<iso:value-of select="ows:Identifier" />".</iso:assert>
			  <iso:assert test="count(wmts:ResourceURL[@resourceType='simpleProfileTile'])=0 or starts-with(wmts:ResourceURL[@resourceType='simpleProfileTile']/@format,'image/png') or starts-with(wmts:ResourceURL[@resourceType='simpleProfileTile']/@format,'image/jpeg')">URL template with resourceType 'simpleProfileTile' shall only be in format="image/png" or format="image/jpeg". Error in layer "<iso:value-of select="ows:Identifier" />".</iso:assert>
			  <iso:assert test="count(wmts:ResourceURL[@resourceType='simpleProfileCRS84Tile'])=0 or starts-with(wmts:ResourceURL[@resourceType='simpleProfileCRS84Tile']/@format,'image/png') or starts-with(wmts:ResourceURL[@resourceType='simpleProfileCRS84Tile']/@format,'image/jpeg')">URL template with resourceType 'simpleProfileCSR84Tile' shall only be in format="image/png" or format="image/jpeg". Error in layer "<iso:value-of select="ows:Identifier" />".</iso:assert>
		</iso:rule>
        <iso:rule context="/wmts:Capabilities/wmts:Contents/wmts:TileMatrixSet[ows:Identifier='WorldWebMercatorQuad']">
 			<iso:assert test="ows:BoundingBox/@crs='urn:ogc:def:crs:EPSG::3857' and ows:BoundingBox/ows:LowerCorner='-20037508.3427892 -20037508.3427892' and ows:BoundingBox/ows:UpperCorner='20037508.3427892 20037508.3427892'">A WMTS Simple shall declare support for "http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile" shall have a TileMatrixSet with blank identifier and BoundingBox in urn:ogc:def:crs:EPSG::3857 (-20037508.3427892 -20037508.3427892) x (20037508.3427892 20037508.3427892)</iso:assert>
			<iso:assert test="wmts:WellKnownScaleSet='urn:ogc:def:wkss:OGC:1.0:GoogleMapsCompatible'">A WMTS Simple shall declare support for "http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile" shall have a TileMatrixSet with blank identifier and WellKnownScaleSet='urn:ogc:def:wkss:OGC:1.0:GoogleMapsCompatible'</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='0'])=0 or (count(wmts:TileMatrix[ows:Identifier='0'])=1 and wmts:TileMatrix[ows:Identifier='0']/wmts:ScaleDenominator='559082264.0287178' and wmts:TileMatrix[ows:Identifier='0']/wmts:TopLeftCorner='-20037508.3427892 20037508.3427892' and wmts:TileMatrix[ows:Identifier='0']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='0']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='0']/wmts:MatrixWidth='1' and wmts:TileMatrix[ows:Identifier='0']/wmts:MatrixHeight='1')">Wrong definition of the TileMatrix '0' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='1'])=0 or (count(wmts:TileMatrix[ows:Identifier='1'])=1 and wmts:TileMatrix[ows:Identifier='1']/wmts:ScaleDenominator='279541132.0143589' and wmts:TileMatrix[ows:Identifier='1']/wmts:TopLeftCorner='-20037508.3427892 20037508.3427892' and wmts:TileMatrix[ows:Identifier='1']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='1']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='1']/wmts:MatrixWidth='2' and wmts:TileMatrix[ows:Identifier='1']/wmts:MatrixHeight='2')">Wrong definition of the TileMatrix '1' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='2'])=0 or (count(wmts:TileMatrix[ows:Identifier='2'])=1 and wmts:TileMatrix[ows:Identifier='2']/wmts:ScaleDenominator='139770566.0071794' and wmts:TileMatrix[ows:Identifier='2']/wmts:TopLeftCorner='-20037508.3427892 20037508.3427892' and wmts:TileMatrix[ows:Identifier='2']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='2']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='2']/wmts:MatrixWidth='4' and wmts:TileMatrix[ows:Identifier='2']/wmts:MatrixHeight='4')">Wrong definition of the TileMatrix '2' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='3'])=0 or (count(wmts:TileMatrix[ows:Identifier='3'])=1 and wmts:TileMatrix[ows:Identifier='3']/wmts:ScaleDenominator='69885283.00358972' and wmts:TileMatrix[ows:Identifier='3']/wmts:TopLeftCorner='-20037508.3427892 20037508.3427892' and wmts:TileMatrix[ows:Identifier='3']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='3']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='3']/wmts:MatrixWidth='8' and wmts:TileMatrix[ows:Identifier='3']/wmts:MatrixHeight='8')">Wrong definition of the TileMatrix '3' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='4'])=0 or (count(wmts:TileMatrix[ows:Identifier='4'])=1 and wmts:TileMatrix[ows:Identifier='4']/wmts:ScaleDenominator='34942641.50179486' and wmts:TileMatrix[ows:Identifier='4']/wmts:TopLeftCorner='-20037508.3427892 20037508.3427892' and wmts:TileMatrix[ows:Identifier='4']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='4']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='4']/wmts:MatrixWidth='16' and wmts:TileMatrix[ows:Identifier='4']/wmts:MatrixHeight='16')">Wrong definition of the TileMatrix '4' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='5'])=0 or (count(wmts:TileMatrix[ows:Identifier='5'])=1 and wmts:TileMatrix[ows:Identifier='5']/wmts:ScaleDenominator='17471320.75089743' and wmts:TileMatrix[ows:Identifier='5']/wmts:TopLeftCorner='-20037508.3427892 20037508.3427892' and wmts:TileMatrix[ows:Identifier='5']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='5']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='5']/wmts:MatrixWidth='32' and wmts:TileMatrix[ows:Identifier='5']/wmts:MatrixHeight='32')">Wrong definition of the TileMatrix '5' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='6'])=0 or (count(wmts:TileMatrix[ows:Identifier='6'])=1 and wmts:TileMatrix[ows:Identifier='6']/wmts:ScaleDenominator='8735660.375448715' and wmts:TileMatrix[ows:Identifier='6']/wmts:TopLeftCorner='-20037508.3427892 20037508.3427892' and wmts:TileMatrix[ows:Identifier='6']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='6']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='6']/wmts:MatrixWidth='64' and wmts:TileMatrix[ows:Identifier='6']/wmts:MatrixHeight='64')">Wrong definition of the TileMatrix '6' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='7'])=0 or (count(wmts:TileMatrix[ows:Identifier='7'])=1 and wmts:TileMatrix[ows:Identifier='7']/wmts:ScaleDenominator='4367830.187724357' and wmts:TileMatrix[ows:Identifier='7']/wmts:TopLeftCorner='-20037508.3427892 20037508.3427892' and wmts:TileMatrix[ows:Identifier='7']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='7']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='7']/wmts:MatrixWidth='128' and wmts:TileMatrix[ows:Identifier='7']/wmts:MatrixHeight='128')">Wrong definition of the TileMatrix '7' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='8'])=0 or (count(wmts:TileMatrix[ows:Identifier='8'])=1 and wmts:TileMatrix[ows:Identifier='8']/wmts:ScaleDenominator='2183915.093862179' and wmts:TileMatrix[ows:Identifier='8']/wmts:TopLeftCorner='-20037508.3427892 20037508.3427892' and wmts:TileMatrix[ows:Identifier='8']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='8']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='8']/wmts:MatrixWidth='256' and wmts:TileMatrix[ows:Identifier='8']/wmts:MatrixHeight='256')">Wrong definition of the TileMatrix '8' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='9'])=0 or (count(wmts:TileMatrix[ows:Identifier='9'])=1 and wmts:TileMatrix[ows:Identifier='9']/wmts:ScaleDenominator='1091957.546931089' and wmts:TileMatrix[ows:Identifier='9']/wmts:TopLeftCorner='-20037508.3427892 20037508.3427892' and wmts:TileMatrix[ows:Identifier='9']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='9']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='9']/wmts:MatrixWidth='512' and wmts:TileMatrix[ows:Identifier='9']/wmts:MatrixHeight='512')">Wrong definition of the TileMatrix '9' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='10'])=0 or (count(wmts:TileMatrix[ows:Identifier='10'])=1 and wmts:TileMatrix[ows:Identifier='10']/wmts:ScaleDenominator='545978.7734655447' and wmts:TileMatrix[ows:Identifier='10']/wmts:TopLeftCorner='-20037508.3427892 20037508.3427892' and wmts:TileMatrix[ows:Identifier='10']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='10']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='10']/wmts:MatrixWidth='1024' and wmts:TileMatrix[ows:Identifier='10']/wmts:MatrixHeight='1024')">Wrong definition of the TileMatrix '10' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='11'])=0 or (count(wmts:TileMatrix[ows:Identifier='11'])=1 and wmts:TileMatrix[ows:Identifier='11']/wmts:ScaleDenominator='272989.3867327723' and wmts:TileMatrix[ows:Identifier='11']/wmts:TopLeftCorner='-20037508.3427892 20037508.3427892' and wmts:TileMatrix[ows:Identifier='11']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='11']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='11']/wmts:MatrixWidth='2048' and wmts:TileMatrix[ows:Identifier='11']/wmts:MatrixHeight='2048')">Wrong definition of the TileMatrix '11' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='12'])=0 or (count(wmts:TileMatrix[ows:Identifier='12'])=1 and wmts:TileMatrix[ows:Identifier='12']/wmts:ScaleDenominator='136494.6933663862' and wmts:TileMatrix[ows:Identifier='12']/wmts:TopLeftCorner='-20037508.3427892 20037508.3427892' and wmts:TileMatrix[ows:Identifier='12']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='12']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='12']/wmts:MatrixWidth='4096' and wmts:TileMatrix[ows:Identifier='12']/wmts:MatrixHeight='4096')">Wrong definition of the TileMatrix '12' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='13'])=0 or (count(wmts:TileMatrix[ows:Identifier='13'])=1 and wmts:TileMatrix[ows:Identifier='13']/wmts:ScaleDenominator='68247.34668319309' and wmts:TileMatrix[ows:Identifier='13']/wmts:TopLeftCorner='-20037508.3427892 20037508.3427892' and wmts:TileMatrix[ows:Identifier='13']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='13']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='13']/wmts:MatrixWidth='8192' and wmts:TileMatrix[ows:Identifier='13']/wmts:MatrixHeight='8192')">Wrong definition of the TileMatrix '13' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='14'])=0 or (count(wmts:TileMatrix[ows:Identifier='14'])=1 and wmts:TileMatrix[ows:Identifier='14']/wmts:ScaleDenominator='34123.67334159654' and wmts:TileMatrix[ows:Identifier='14']/wmts:TopLeftCorner='-20037508.3427892 20037508.3427892' and wmts:TileMatrix[ows:Identifier='14']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='14']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='14']/wmts:MatrixWidth='16384' and wmts:TileMatrix[ows:Identifier='14']/wmts:MatrixHeight='16384')">Wrong definition of the TileMatrix '14' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='15'])=0 or (count(wmts:TileMatrix[ows:Identifier='15'])=1 and wmts:TileMatrix[ows:Identifier='15']/wmts:ScaleDenominator='17061.83667079827' and wmts:TileMatrix[ows:Identifier='15']/wmts:TopLeftCorner='-20037508.3427892 20037508.3427892' and wmts:TileMatrix[ows:Identifier='15']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='15']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='15']/wmts:MatrixWidth='32768' and wmts:TileMatrix[ows:Identifier='15']/wmts:MatrixHeight='32768')">Wrong definition of the TileMatrix '15' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='16'])=0 or (count(wmts:TileMatrix[ows:Identifier='16'])=1 and wmts:TileMatrix[ows:Identifier='16']/wmts:ScaleDenominator='8530.918335399136' and wmts:TileMatrix[ows:Identifier='16']/wmts:TopLeftCorner='-20037508.3427892 20037508.3427892' and wmts:TileMatrix[ows:Identifier='16']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='16']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='16']/wmts:MatrixWidth='65536' and wmts:TileMatrix[ows:Identifier='16']/wmts:MatrixHeight='65536')">Wrong definition of the TileMatrix '16' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='17'])=0 or (count(wmts:TileMatrix[ows:Identifier='17'])=1 and wmts:TileMatrix[ows:Identifier='17']/wmts:ScaleDenominator='4265.459167699568' and wmts:TileMatrix[ows:Identifier='17']/wmts:TopLeftCorner='-20037508.3427892 20037508.3427892' and wmts:TileMatrix[ows:Identifier='17']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='17']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='17']/wmts:MatrixWidth='131072' and wmts:TileMatrix[ows:Identifier='17']/wmts:MatrixHeight='131072')">Wrong definition of the TileMatrix '17' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='18'])=0 or (count(wmts:TileMatrix[ows:Identifier='18'])=1 and wmts:TileMatrix[ows:Identifier='18']/wmts:ScaleDenominator='2132.729583849784' and wmts:TileMatrix[ows:Identifier='18']/wmts:TopLeftCorner='-20037508.3427892 20037508.3427892' and wmts:TileMatrix[ows:Identifier='18']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='18']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='18']/wmts:MatrixWidth='262144' and wmts:TileMatrix[ows:Identifier='18']/wmts:MatrixHeight='262144')">Wrong definition of the TileMatrix '18' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile' profile.</iso:assert>
		</iso:rule>
        <iso:rule context="/wmts:Capabilities/wmts:Contents/wmts:TileMatrixSet[ows:Identifier='WorldCRS84Quad'] | /wmts:Capabilities/wmts:Contents/wmts:TileMatrixSet[ows:Identifier='InspireCRS84Quad']">
 			<iso:assert test="ows:BoundingBox/@crs='urn:ogc:def:crs:OGC:1.3:CRS84' and ows:BoundingBox/ows:LowerCorner='-180 -90' and ows:BoundingBox/ows:UpperCorner='180 90'">A WMTS Simple supporting "http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84" shall have a TileMatrixSet with identifier 'WorldCRS84Quad' and BoundingBox in urn:ogc:def:crs:OGC:1.3:CRS84 (-180 -90) x (-180 -90)</iso:assert>
			<iso:assert test="wmts:WellKnownScaleSet='urn:ogc:def:wkss:OGC:1.0:GoogleCRS84Quad'">A WMTS Simple supporting "http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CSR84" shall have a TileMatrixSet with identifier 'WorldCRS84Quad' and WellKnownScaleSet='urn:ogc:def:wkss:OGC:1.0:GoogleCRS84Quad'.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='-1'])=0 or (count(wmts:TileMatrix[ows:Identifier='-1'])=1 and wmts:TileMatrix[ows:Identifier='-1']/wmts:ScaleDenominator='559082264.0287178' and wmts:TileMatrix[ows:Identifier='-1']/wmts:TopLeftCorner='-180 90' and wmts:TileMatrix[ows:Identifier='-1']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='-1']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='-1']/wmts:MatrixWidth='1' and wmts:TileMatrix[ows:Identifier='-1']/wmts:MatrixHeight='1')">Wrong definition of the TileMatrix '-1' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='0'])=0 or (count(wmts:TileMatrix[ows:Identifier='0'])=1 and wmts:TileMatrix[ows:Identifier='0']/wmts:ScaleDenominator='279541132.0143589' and wmts:TileMatrix[ows:Identifier='0']/wmts:TopLeftCorner='-180 90' and wmts:TileMatrix[ows:Identifier='0']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='0']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='0']/wmts:MatrixWidth='2' and wmts:TileMatrix[ows:Identifier='0']/wmts:MatrixHeight='1')">Wrong definition of the TileMatrix '0' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='1'])=0 or (count(wmts:TileMatrix[ows:Identifier='1'])=1 and wmts:TileMatrix[ows:Identifier='1']/wmts:ScaleDenominator='139770566.0071794' and wmts:TileMatrix[ows:Identifier='1']/wmts:TopLeftCorner='-180 90' and wmts:TileMatrix[ows:Identifier='1']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='1']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='1']/wmts:MatrixWidth='4' and wmts:TileMatrix[ows:Identifier='1']/wmts:MatrixHeight='2')">Wrong definition of the TileMatrix '1' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='2'])=0 or (count(wmts:TileMatrix[ows:Identifier='2'])=1 and wmts:TileMatrix[ows:Identifier='2']/wmts:ScaleDenominator='69885283.00358972' and wmts:TileMatrix[ows:Identifier='2']/wmts:TopLeftCorner='-180 90' and wmts:TileMatrix[ows:Identifier='2']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='2']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='2']/wmts:MatrixWidth='8' and wmts:TileMatrix[ows:Identifier='2']/wmts:MatrixHeight='4')">Wrong definition of the TileMatrix '2' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='3'])=0 or (count(wmts:TileMatrix[ows:Identifier='3'])=1 and wmts:TileMatrix[ows:Identifier='3']/wmts:ScaleDenominator='34942641.50179486' and wmts:TileMatrix[ows:Identifier='3']/wmts:TopLeftCorner='-180 90' and wmts:TileMatrix[ows:Identifier='3']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='3']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='3']/wmts:MatrixWidth='16' and wmts:TileMatrix[ows:Identifier='3']/wmts:MatrixHeight='8')">Wrong definition of the TileMatrix '3' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='4'])=0 or (count(wmts:TileMatrix[ows:Identifier='4'])=1 and wmts:TileMatrix[ows:Identifier='4']/wmts:ScaleDenominator='17471320.75089743' and wmts:TileMatrix[ows:Identifier='4']/wmts:TopLeftCorner='-180 90' and wmts:TileMatrix[ows:Identifier='4']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='4']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='4']/wmts:MatrixWidth='32' and wmts:TileMatrix[ows:Identifier='4']/wmts:MatrixHeight='16')">Wrong definition of the TileMatrix '4' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='5'])=0 or (count(wmts:TileMatrix[ows:Identifier='5'])=1 and wmts:TileMatrix[ows:Identifier='5']/wmts:ScaleDenominator='8735660.375448715' and wmts:TileMatrix[ows:Identifier='5']/wmts:TopLeftCorner='-180 90' and wmts:TileMatrix[ows:Identifier='5']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='5']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='5']/wmts:MatrixWidth='64' and wmts:TileMatrix[ows:Identifier='5']/wmts:MatrixHeight='32')">Wrong definition of the TileMatrix '5' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='6'])=0 or (count(wmts:TileMatrix[ows:Identifier='6'])=1 and wmts:TileMatrix[ows:Identifier='6']/wmts:ScaleDenominator='4367830.187724357' and wmts:TileMatrix[ows:Identifier='6']/wmts:TopLeftCorner='-180 90' and wmts:TileMatrix[ows:Identifier='6']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='6']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='6']/wmts:MatrixWidth='128' and wmts:TileMatrix[ows:Identifier='6']/wmts:MatrixHeight='64')">Wrong definition of the TileMatrix '6' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='7'])=0 or (count(wmts:TileMatrix[ows:Identifier='7'])=1 and wmts:TileMatrix[ows:Identifier='7']/wmts:ScaleDenominator='2183915.093862179' and wmts:TileMatrix[ows:Identifier='7']/wmts:TopLeftCorner='-180 90' and wmts:TileMatrix[ows:Identifier='7']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='7']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='7']/wmts:MatrixWidth='256' and wmts:TileMatrix[ows:Identifier='7']/wmts:MatrixHeight='128')">Wrong definition of the TileMatrix '7' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='8'])=0 or (count(wmts:TileMatrix[ows:Identifier='8'])=1 and wmts:TileMatrix[ows:Identifier='8']/wmts:ScaleDenominator='1091957.546931089' and wmts:TileMatrix[ows:Identifier='8']/wmts:TopLeftCorner='-180 90' and wmts:TileMatrix[ows:Identifier='8']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='8']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='8']/wmts:MatrixWidth='512' and wmts:TileMatrix[ows:Identifier='8']/wmts:MatrixHeight='256')">Wrong definition of the TileMatrix '8' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='9'])=0 or (count(wmts:TileMatrix[ows:Identifier='9'])=1 and wmts:TileMatrix[ows:Identifier='9']/wmts:ScaleDenominator='545978.7734655447' and wmts:TileMatrix[ows:Identifier='9']/wmts:TopLeftCorner='-180 90' and wmts:TileMatrix[ows:Identifier='9']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='9']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='9']/wmts:MatrixWidth='1024' and wmts:TileMatrix[ows:Identifier='9']/wmts:MatrixHeight='512')">Wrong definition of the TileMatrix '9' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='10'])=0 or (count(wmts:TileMatrix[ows:Identifier='10'])=1 and wmts:TileMatrix[ows:Identifier='10']/wmts:ScaleDenominator='272989.3867327723' and wmts:TileMatrix[ows:Identifier='10']/wmts:TopLeftCorner='-180 90' and wmts:TileMatrix[ows:Identifier='10']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='10']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='10']/wmts:MatrixWidth='2048' and wmts:TileMatrix[ows:Identifier='10']/wmts:MatrixHeight='1024')">Wrong definition of the TileMatrix '10' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='11'])=0 or (count(wmts:TileMatrix[ows:Identifier='11'])=1 and wmts:TileMatrix[ows:Identifier='11']/wmts:ScaleDenominator='136494.6933663862' and wmts:TileMatrix[ows:Identifier='11']/wmts:TopLeftCorner='-180 90' and wmts:TileMatrix[ows:Identifier='11']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='11']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='11']/wmts:MatrixWidth='4096' and wmts:TileMatrix[ows:Identifier='11']/wmts:MatrixHeight='2048')">Wrong definition of the TileMatrix '11' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='12'])=0 or (count(wmts:TileMatrix[ows:Identifier='12'])=1 and wmts:TileMatrix[ows:Identifier='12']/wmts:ScaleDenominator='68247.34668319309' and wmts:TileMatrix[ows:Identifier='12']/wmts:TopLeftCorner='-180 90' and wmts:TileMatrix[ows:Identifier='12']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='12']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='12']/wmts:MatrixWidth='8192' and wmts:TileMatrix[ows:Identifier='12']/wmts:MatrixHeight='4096')">Wrong definition of the TileMatrix '12' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='13'])=0 or (count(wmts:TileMatrix[ows:Identifier='13'])=1 and wmts:TileMatrix[ows:Identifier='13']/wmts:ScaleDenominator='34123.67334159654' and wmts:TileMatrix[ows:Identifier='13']/wmts:TopLeftCorner='-180 90' and wmts:TileMatrix[ows:Identifier='13']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='13']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='13']/wmts:MatrixWidth='16384' and wmts:TileMatrix[ows:Identifier='13']/wmts:MatrixHeight='8192')">Wrong definition of the TileMatrix '13' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='14'])=0 or (count(wmts:TileMatrix[ows:Identifier='14'])=1 and wmts:TileMatrix[ows:Identifier='14']/wmts:ScaleDenominator='17061.83667079827' and wmts:TileMatrix[ows:Identifier='14']/wmts:TopLeftCorner='-180 90' and wmts:TileMatrix[ows:Identifier='14']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='14']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='14']/wmts:MatrixWidth='32768' and wmts:TileMatrix[ows:Identifier='14']/wmts:MatrixHeight='16384')">Wrong definition of the TileMatrix '14' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='15'])=0 or (count(wmts:TileMatrix[ows:Identifier='15'])=1 and wmts:TileMatrix[ows:Identifier='15']/wmts:ScaleDenominator='8530.918335399136' and wmts:TileMatrix[ows:Identifier='15']/wmts:TopLeftCorner='-180 90' and wmts:TileMatrix[ows:Identifier='15']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='15']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='15']/wmts:MatrixWidth='65536' and wmts:TileMatrix[ows:Identifier='15']/wmts:MatrixHeight='32768')">Wrong definition of the TileMatrix '15' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='16'])=0 or (count(wmts:TileMatrix[ows:Identifier='16'])=1 and wmts:TileMatrix[ows:Identifier='16']/wmts:ScaleDenominator='4265.459167699568' and wmts:TileMatrix[ows:Identifier='16']/wmts:TopLeftCorner='-180 90' and wmts:TileMatrix[ows:Identifier='16']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='16']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='16']/wmts:MatrixWidth='131072' and wmts:TileMatrix[ows:Identifier='16']/wmts:MatrixHeight='65536')">Wrong definition of the TileMatrix '16' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='17'])=0 or (count(wmts:TileMatrix[ows:Identifier='17'])=1 and wmts:TileMatrix[ows:Identifier='17']/wmts:ScaleDenominator='2132.729583849784' and wmts:TileMatrix[ows:Identifier='17']/wmts:TopLeftCorner='-180 90' and wmts:TileMatrix[ows:Identifier='17']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='17']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='17']/wmts:MatrixWidth='262144' and wmts:TileMatrix[ows:Identifier='17']/wmts:MatrixHeight='131072')">Wrong definition of the TileMatrix '17' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84' profile.</iso:assert>
			<iso:assert test="count(wmts:TileMatrix[ows:Identifier='18'])=0 or (count(wmts:TileMatrix[ows:Identifier='18'])=1 and wmts:TileMatrix[ows:Identifier='18']/wmts:ScaleDenominator='1066.364791924892' and wmts:TileMatrix[ows:Identifier='18']/wmts:TopLeftCorner='-180 90' and wmts:TileMatrix[ows:Identifier='18']/wmts:TileWidth='256' and wmts:TileMatrix[ows:Identifier='18']/wmts:TileHeight='256' and wmts:TileMatrix[ows:Identifier='18']/wmts:MatrixWidth='524288' and wmts:TileMatrix[ows:Identifier='18']/wmts:MatrixHeight='262144')">Wrong definition of the TileMatrix '18' for WMTS Simple in 'http://www.opengis.net/spec/wmts-simple/1.0/conf/simple-profile/CRS84' profile.</iso:assert>
		</iso:rule>		
    </iso:pattern>
</iso:schema>
