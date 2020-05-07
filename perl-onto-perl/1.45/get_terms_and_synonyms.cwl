class: CommandLineTool
id: get_terms_and_synonyms.pl.cwl
inputs:
- id: f
  doc: OBO input file
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- get_terms_and_synonyms.pl
