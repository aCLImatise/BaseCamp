class: CommandLineTool
id: gensub2.cwl
inputs:
- id: in_group_one
  doc: '- write elements in order Aa Ab Ac Ba Bb Bc Ca Cb Cc'
  type: boolean?
  inputBinding:
    prefix: -group1
- id: in_group_two
  doc: '- write elements in order Aa Ba Ca Ab Bb Cb Ac Bc Cc'
  type: boolean?
  inputBinding:
    prefix: -group2
- id: in_file_list_one
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_file_list_two
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_template_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gensub2
