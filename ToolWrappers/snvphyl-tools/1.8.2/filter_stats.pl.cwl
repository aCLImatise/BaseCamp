class: CommandLineTool
id: filter_stats.pl.cwl
inputs:
- id: in_input
  doc: The psudo-alignment positions tab delimited file
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_all
  doc: "When this option is set, the results will include all the\nentries marked\
    \ as 'filtered-invalid'"
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_filter_stats_do_tpl
  doc: ''
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
- filter-stats.pl
