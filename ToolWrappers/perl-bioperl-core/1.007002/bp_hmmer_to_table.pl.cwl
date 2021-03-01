class: CommandLineTool
id: bp_hmmer_to_table.pl.cwl
inputs:
- id: in_evalue
  doc: -- filter by evalue
  type: string?
  inputBinding:
    prefix: --evalue
- id: in_bit_score
  doc: -- filter by bitscore --header -- boolean flag to
  type: boolean?
  inputBinding:
    prefix: --bitscore
- id: in_score
  doc: e-value
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
- bp_hmmer_to_table.pl
