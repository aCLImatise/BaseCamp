class: CommandLineTool
id: get_terms_by_name.pl.cwl
inputs:
- id: f
  doc: OBO input file
  type: boolean
  inputBinding:
    prefix: -f
- id: t
  doc: term name
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- get_terms_by_name.pl
