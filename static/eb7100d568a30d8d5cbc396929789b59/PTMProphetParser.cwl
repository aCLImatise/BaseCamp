class: CommandLineTool
id: ../../../PTMProphetParser.cwl
inputs:
- id: input_file_dot_pep_dot_xml
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- PTMProphetParser
