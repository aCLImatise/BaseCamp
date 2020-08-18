class: CommandLineTool
id: ../../../halAddToBranch.cwl
inputs:
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bot_alignment_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: top_alignment_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: parent_name
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: insert_name
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: child_name
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: leaf_name
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: upper_branch_length
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: leaf_branch_length
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs: []
cwlVersion: v1.1
baseCommand:
- halAddToBranch
