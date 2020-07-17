class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/get_relationship_id_vs_relationship_name.pl.cwl
inputs:
- id: obo_input_file
  doc: OBO input file
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- get_relationship_id_vs_relationship_name.pl
