class: CommandLineTool
id: tigmint_arcs_tsv_out_file.cwl
inputs:
- id: in_tig_mint_arcs_tsv
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_graph_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_out_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tigmint-arcs-tsv
- out_file
