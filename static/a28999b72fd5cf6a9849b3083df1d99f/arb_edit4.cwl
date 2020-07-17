class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/arb_edit4.cwl
inputs:
- id: loads_configuration
  doc: "loads configuration 'config' (default: 'default_configuration')"
  type: string
  inputBinding:
    prefix: -c
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_edit4
