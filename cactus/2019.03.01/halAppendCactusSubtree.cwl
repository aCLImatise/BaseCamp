class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/halAppendCactusSubtree.cwl
inputs:
- id: cactus_dot_ctw_oh_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cactus_dot_fa_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: newick_tree
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_hal_path
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- halAppendCactusSubtree
