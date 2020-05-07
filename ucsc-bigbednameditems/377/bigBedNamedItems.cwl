class: CommandLineTool
id: bigBedNamedItems.cwl
inputs:
- id: file_bb
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: name_file
  doc: ', treat name parameter as file full of space delimited names'
  type: string
  inputBinding:
    prefix: -nameFile
- id: field
  doc: on field name, default is "name"
  type: string
  inputBinding:
    prefix: -field
outputs: []
cwlVersion: v1.1
baseCommand:
- bigBedNamedItems
