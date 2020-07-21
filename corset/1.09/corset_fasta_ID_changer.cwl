class: CommandLineTool
id: ../../../corset_fasta_ID_changer.cwl
inputs:
- id: cluster_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- corset_fasta_ID_changer
