class: CommandLineTool
id: bp_fastam9_to_table.pl.cwl
inputs:
- id: in__filter_evalue
  doc: -- filter by evalue
  type: string?
  inputBinding:
    prefix: --evalue
- id: in_bit_score
  doc: -- filter by bitscore --header -- boolean flag to
  type: boolean?
  inputBinding:
    prefix: --bitscore
- id: in_query_name
  doc: hit name
  type: string
  inputBinding:
    position: 0
- id: in_bit_score
  doc: bit score
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bp_fastam9_to_table.pl
