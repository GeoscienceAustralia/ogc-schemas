var EOP_SAR_1_0_Module_Factory = function () {
  var EOP_SAR_1_0 = {
    n: 'EOP_SAR_1_0',
    dens: 'http:\/\/earth.esa.int\/sar',
    deps: ['GML_3_1_1', 'EOP_1_0'],
    tis: [{
        ln: 'AcquisitionType',
        bti: 'EOP_1_0.AcquisitionType',
        ps: [{
            n: 'polarisationMode'
          }, {
            n: 'polarisationChannels'
          }, {
            n: 'antennaLookDirection'
          }, {
            n: 'minimumIncidenceAngle',
            ti: 'GML_3_1_1.AngleType'
          }, {
            n: 'maximumIncidenceAngle',
            ti: 'GML_3_1_1.AngleType'
          }, {
            n: 'incidenceAngleVariation',
            ti: 'GML_3_1_1.AngleType'
          }, {
            n: 'dopplerFrequency',
            ti: 'GML_3_1_1.MeasureType'
          }]
      }, {
        ln: 'EarthObservationType',
        bti: 'EOP_1_0.EarthObservationType'
      }, {
        t: 'enum',
        ln: 'PolarisationModePropertyType',
        vs: ['D', 'Q', 'S', 'T', 'UNDEFINED']
      }, {
        t: 'enum',
        ln: 'PolarisationChannelsPropertyType',
        vs: ['HH', 'HV', 'VH', 'VV', 'HH, VV', 'HH, VH', 'HH, HV', 'VH, VV', 'VH, HV', 'VV, HV', 'HH, VV, HV, VH', 'UNDEFINED']
      }],
    eis: [{
        en: 'dopplerFrequency',
        ti: 'GML_3_1_1.MeasureType'
      }, {
        en: 'EarthObservation',
        ti: '.EarthObservationType',
        sh: {
          lp: 'EarthObservation',
          ns: 'http:\/\/earth.esa.int\/eop'
        }
      }, {
        en: 'polarisationMode'
      }, {
        en: 'polarisationChannels'
      }, {
        en: 'antennaLookDirection'
      }, {
        en: 'incidenceAngleVariation',
        ti: 'GML_3_1_1.AngleType'
      }, {
        en: 'maximumIncidenceAngle',
        ti: 'GML_3_1_1.AngleType'
      }, {
        en: 'minimumIncidenceAngle',
        ti: 'GML_3_1_1.AngleType'
      }, {
        en: 'Acquisition',
        ti: '.AcquisitionType',
        sh: {
          lp: 'Acquisition',
          ns: 'http:\/\/earth.esa.int\/eop'
        }
      }]
  };
  return {
    EOP_SAR_1_0: EOP_SAR_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], EOP_SAR_1_0_Module_Factory);
}
else {
  var EOP_SAR_1_0_Module = EOP_SAR_1_0_Module_Factory();
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.EOP_SAR_1_0 = EOP_SAR_1_0_Module.EOP_SAR_1_0;
  }
  else {
    var EOP_SAR_1_0 = EOP_SAR_1_0_Module.EOP_SAR_1_0;
  }
}