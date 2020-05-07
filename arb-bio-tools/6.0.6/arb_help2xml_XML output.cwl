class: CommandLineTool
id: arb_help2xml_XML output.cwl
inputs:
- id: arb_help_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: xml_output
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_help2xml
- XML output
