class: CommandLineTool
id: bp_parse_hmmsearch.pl.cwl
inputs:
- id: in_hmmsearch_file_parse
  doc: HMMSEARCH file to parse.
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_index_file_contains
  doc: INDEX file that contains a list of HMMSEARCH files for multiple
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_po
  doc: Print only the hits that have positive scores.
  type: boolean?
  inputBinding:
    prefix: --po
- id: in_ps
  doc: Print the total of positive scores found.
  type: boolean?
  inputBinding:
    prefix: --ps
- id: in_parsing_dot
  doc: 'Special Options:'
  type: string
  inputBinding:
    position: 0
- id: in_bioperl_lat_bioperl_dot_org
  doc: '- General discussion'
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
- bp_parse_hmmsearch.pl
