class: CommandLineTool
id: extractBCITrees_MrBayes .trprobs input file 1 .. N.cwl
inputs:
- id: random_seed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bci_threshold
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: max_output_trees
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: mr_bayestrprobsinputfile1n
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: nexus_output_file
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- extractBCITrees
- MrBayes .trprobs input file 1 .. N
