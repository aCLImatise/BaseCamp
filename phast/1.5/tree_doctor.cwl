class: CommandLineTool
id: tree_doctor.cwl
inputs:
- id: newick
  doc: The input file is in Newick format (necessary if file name does not end in
    .nh)
  type: boolean
  inputBinding:
    prefix: --newick
outputs: []
cwlVersion: v1.1
baseCommand:
- tree_doctor
