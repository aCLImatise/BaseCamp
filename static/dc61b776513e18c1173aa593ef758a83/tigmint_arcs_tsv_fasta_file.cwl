class: CommandLineTool
id: tigmint_arcs_tsv_fasta_file.cwl
inputs:
- id: graph_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- tigmint-arcs-tsv
- fasta_file
