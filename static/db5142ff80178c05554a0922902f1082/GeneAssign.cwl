class: CommandLineTool
id: GeneAssign.py.cwl
inputs:
- id: scg_cov_file
  doc: input core gene coverages
  type: string
  inputBinding:
    position: 0
- id: gamma_star_file
  doc: input MAP estimate frequencies
  type: string
  inputBinding:
    position: 1
- id: cov_file
  doc: mean contig/genes coverages
  type: string
  inputBinding:
    position: 2
- id: epsilon_file
  doc: predicted transition matrix
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- GeneAssign.py
