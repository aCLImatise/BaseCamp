class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/halAppendSubtree.cwl
inputs:
- id: main_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: append_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: parent_name
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: root_name
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- halAppendSubtree
