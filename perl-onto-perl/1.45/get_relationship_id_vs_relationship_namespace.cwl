class: CommandLineTool
id: ../../../get_relationship_id_vs_relationship_namespace.pl.cwl
inputs:
- id: obo_input_file
  doc: OBO input file
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- get_relationship_id_vs_relationship_namespace.pl
