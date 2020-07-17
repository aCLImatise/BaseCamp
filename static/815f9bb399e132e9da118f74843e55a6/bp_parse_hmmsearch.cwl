class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bp_parse_hmmsearch.pl.cwl
inputs:
- id: hmmsearch_file_parse
  doc: HMMSEARCH file to parse.
  type: boolean
  inputBinding:
    prefix: -s
- id: index_file_contains
  doc: INDEX file that contains a list of HMMSEARCH files for multiple parsing.
  type: boolean
  inputBinding:
    prefix: -m
- id: po
  doc: Print only the hits that have positive scores.
  type: boolean
  inputBinding:
    prefix: --po
- id: ps
  doc: Print the total of positive scores found.
  type: boolean
  inputBinding:
    prefix: --ps
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_parse_hmmsearch.pl
