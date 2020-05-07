class: CommandLineTool
id: get_term_local_neighbourhood.pl.cwl
inputs:
- id: f
  doc: OBO input file
  type: boolean
  inputBinding:
    prefix: -f
- id: t
  doc: term ID
  type: boolean
  inputBinding:
    prefix: -t
- id: r
  doc: relationship type
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- get_term_local_neighbourhood.pl
