class: CommandLineTool
id: get_term_id_vs_term_def.pl.cwl
inputs:
- id: f
  doc: OBO input file
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- get_term_id_vs_term_def.pl
