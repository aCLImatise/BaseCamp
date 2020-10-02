class: CommandLineTool
id: msp_newick.cwl
inputs:
- id: in_precision
  doc: "The number of decimal places in branch lengths\n"
  type: double
  inputBinding:
    prefix: --precision
- id: in_history_file
  doc: The msprime history file in HDF5 format
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- msp
- newick
