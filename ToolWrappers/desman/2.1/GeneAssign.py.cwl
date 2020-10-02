class: CommandLineTool
id: GeneAssign.py.cwl
inputs:
- id: in_i
  doc: ''
  type: long
  inputBinding:
    prefix: -i
- id: in_e
  doc: ''
  type: long
  inputBinding:
    prefix: -e
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: in_scg_cov_file
  doc: input core gene coverages
  type: string
  inputBinding:
    position: 0
- id: in_gamma_star_file
  doc: input MAP estimate frequencies
  type: string
  inputBinding:
    position: 1
- id: in_cov_file
  doc: mean contig/genes coverages
  type: string
  inputBinding:
    position: 2
- id: in_epsilon_file
  doc: predicted transition matrix
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- GeneAssign.py
