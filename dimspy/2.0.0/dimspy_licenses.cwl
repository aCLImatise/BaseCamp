class: CommandLineTool
id: dimspy_licenses.cwl
inputs:
- id: thermo_fisher
  doc: .CommonCore.BackgroundSubtraction.dll
  type: boolean
  inputBinding:
    prefix: '- ThermoFisher'
- id: thermo_fisher
  doc: .CommonCore.BackgroundSubtraction.XML
  type: boolean
  inputBinding:
    prefix: '- ThermoFisher'
- id: thermo_fisher
  doc: .CommonCore.Data.dll
  type: boolean
  inputBinding:
    prefix: '- ThermoFisher'
- id: thermo_fisher
  doc: .CommonCore.Data.XML
  type: boolean
  inputBinding:
    prefix: '- ThermoFisher'
- id: thermo_fisher
  doc: .CommonCore.MassPrecisionEstimator.dll
  type: boolean
  inputBinding:
    prefix: '- ThermoFisher'
- id: thermo_fisher
  doc: .CommonCore.MassPrecisionEstimator.XML
  type: boolean
  inputBinding:
    prefix: '- ThermoFisher'
- id: thermo_fisher
  doc: .CommonCore.RawFileReader.dll
  type: boolean
  inputBinding:
    prefix: '- ThermoFisher'
- id: thermo_fisher
  doc: .CommonCore.RawFileReader.XML
  type: boolean
  inputBinding:
    prefix: '- ThermoFisher'
outputs: []
cwlVersion: v1.1
baseCommand:
- dimspy
- licenses
