class: CommandLineTool
id: extractBCITrees_random seed_max output trees.cwl
inputs:
- id: bci_threshold
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: max_output_trees
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: mr_bayestrprobsinputfile1n
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: nexus_output_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- extractBCITrees
- random seed
- max output trees
