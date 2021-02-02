class: CommandLineTool
id: megagta_search.cwl
inputs:
- id: in_search
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_succinct_dbg
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_gene_list
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_starting_km_ers_prefix
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_output_prefix
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_prune_len
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_low_cov_penalty
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- megagta
- search
