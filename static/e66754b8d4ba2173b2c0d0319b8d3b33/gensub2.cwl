class: CommandLineTool
id: ../../../gensub2.cwl
inputs:
- id: group_one
  doc: '- write elements in order Aa Ab Ac Ba Bb Bc Ca Cb Cc'
  type: boolean
  inputBinding:
    prefix: -group1
- id: group_two
  doc: '- write elements in order Aa Ba Ca Ab Bb Cb Ac Bc Cc'
  type: boolean
  inputBinding:
    prefix: -group2
- id: file_list_one
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: file_list_two
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: template_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- gensub2
