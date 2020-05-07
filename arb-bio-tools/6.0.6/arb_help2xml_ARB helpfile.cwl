class: CommandLineTool
id: arb_help2xml_ARB helpfile.cwl
inputs:
- id: xml_output
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_help2xml
- ARB helpfile
