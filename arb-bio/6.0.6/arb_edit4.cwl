class: CommandLineTool
id: arb_edit4.cwl
inputs:
- id: c
  doc: "loads configuration 'config' (default: 'default_configuration')"
  type: string
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_edit4
