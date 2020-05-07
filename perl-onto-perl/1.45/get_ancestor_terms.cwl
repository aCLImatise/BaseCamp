class: CommandLineTool
id: get_ancestor_terms.pl.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- get_ancestor_terms.pl
