class: CommandLineTool
id: get_relationship_id_vs_relationship_name.pl.cwl
inputs:
- id: f
  doc: OBO input file
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- get_relationship_id_vs_relationship_name.pl
