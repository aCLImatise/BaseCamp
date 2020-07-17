class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/get_relationship_types.pl.cwl
inputs:
- id: obo_input_file
  doc: OBO input file
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- get_relationship_types.pl
