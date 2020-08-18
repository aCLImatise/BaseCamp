class: CommandLineTool
id: ../../../get_terms_and_synonyms.pl.cwl
inputs:
- id: obo_input_file
  doc: OBO input file
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- get_terms_and_synonyms.pl
