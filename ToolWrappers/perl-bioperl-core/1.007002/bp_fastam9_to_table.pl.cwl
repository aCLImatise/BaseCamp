class: CommandLineTool
id: bp_fastam9_to_table.pl.cwl
inputs:
- id: in_e_slash_evalue
  doc: -- filter by evalue
  type: string
  inputBinding:
    prefix: -e/--evalue
- id: in_b_slash_bit_score
  doc: -- filter by bitscore --header -- boolean flag to
  type: boolean
  inputBinding:
    prefix: -b/--bitscore
- id: in_query_name
  doc: hit name
  type: string
  inputBinding:
    position: 0
- id: in_evalue
  doc: bit score
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bp_fastam9_to_table.pl
