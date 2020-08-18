class: CommandLineTool
id: ../../../tree_doctor.cwl
inputs:
- id: newick
  doc: The input file is in Newick format (necessary if file name does not end in
    .nh)
  type: boolean
  inputBinding:
    prefix: --newick
- id: file_dot_mod
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tree_doctor
