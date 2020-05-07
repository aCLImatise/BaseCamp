class: CommandLineTool
id: gensub2.cwl
inputs:
- id: file_list_1
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: file_list_2
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
- id: group_1
  doc: in order Aa Ab Ac Ba Bb Bc Ca Cb Cc
  type: string
  inputBinding:
    prefix: -group1
- id: group_2
  doc: in order Aa Ba Ca Ab Bb Cb Ac Bc Cc
  type: string
  inputBinding:
    prefix: -group2
outputs: []
cwlVersion: v1.1
baseCommand:
- gensub2
