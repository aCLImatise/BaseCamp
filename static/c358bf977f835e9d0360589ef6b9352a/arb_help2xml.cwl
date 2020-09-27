class: CommandLineTool
id: arb_help2xml.cwl
inputs:
- id: in_arb_help_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_xml_output
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- arb_help2xml
