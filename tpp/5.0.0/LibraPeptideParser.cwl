class: CommandLineTool
id: LibraPeptideParser.cwl
inputs:
- id: pep_xml_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: parameter_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- LibraPeptideParser
