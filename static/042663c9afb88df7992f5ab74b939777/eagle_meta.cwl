class: CommandLineTool
id: eagle_meta.cwl
inputs:
- id: input
  doc: the eagle-data-file
  type: string
  inputBinding:
    position: 0
- id: name
  doc: the name of the meta information
  type: string
  inputBinding:
    position: 1
- id: s
  doc: write this value as meta information
  type: string
  inputBinding:
    prefix: -s
- id: delete
  doc: delete the meta information
  type: boolean
  inputBinding:
    prefix: --delete
- id: store_list
  doc: '[STORELIST] a list containing key value pairs to store'
  type: boolean
  inputBinding:
    prefix: --storelist
outputs: []
cwlVersion: v1.1
baseCommand:
- eagle
- meta
