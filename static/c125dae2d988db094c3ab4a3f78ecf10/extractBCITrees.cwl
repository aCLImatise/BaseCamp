class: CommandLineTool
id: extractBCITrees.cwl
inputs:
- id: in_random_seed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bci_threshold
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_max_output_trees
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_mr_bayes_dot_tr_probs_input_file_one_dot_dot_n
  doc: ''
  type: File
  inputBinding:
    position: 3
- id: in_nexus_output_file
  doc: ''
  type: File
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_nexus_output_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_nexus_output_file)
cwlVersion: v1.1
baseCommand:
- extractBCITrees
