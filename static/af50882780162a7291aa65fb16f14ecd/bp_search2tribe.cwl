class: CommandLineTool
id: ../../../bp_search2tribe.pl.cwl
inputs:
- id: _output_filename
  doc: '- the output filename [default STDOUT]'
  type: File
  inputBinding:
    prefix: -o
- id: search_result_format
  doc: '- search result format (blast, fasta) (ssearch is fasta format). default is
    blast.'
  type: string
  inputBinding:
    prefix: -f
- id: weight
  doc: '- Change the default weight for E(0.0) hits to VALUE (default=200 (i.e. 1e-200)
    )'
  type: string
  inputBinding:
    prefix: --weight
- id: w_slash_weight
  doc: ''
  type: boolean
  inputBinding:
    prefix: -w/--weight
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_search2tribe.pl
