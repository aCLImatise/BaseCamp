class: CommandLineTool
id: get_obsolete_terms.pl.cwl
inputs:
- id: f
  doc: OBO input file
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- get_obsolete_terms.pl
