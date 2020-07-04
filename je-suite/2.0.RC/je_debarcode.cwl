class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/je_debarcode.cwl
inputs:
- id: required_dot
  doc: Cannot be used in conjuction with option(s) USE_EMBASE (EM)
  type: string
  inputBinding:
    position: 0
- id: barcoded_dot
  doc: 'Default value: null. '
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- je
- debarcode
