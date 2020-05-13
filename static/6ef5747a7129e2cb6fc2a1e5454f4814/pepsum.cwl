class: CommandLineTool
id: pepsum.cwl
inputs:
- id: pep_xml_filename
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pepsum
