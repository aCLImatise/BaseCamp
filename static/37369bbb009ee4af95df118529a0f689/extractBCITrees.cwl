class: CommandLineTool
id: ../../../extractBCITrees.cwl
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
- id: mr_bayes_dot_tr_probs_input_file_one_dot_dot_n
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
