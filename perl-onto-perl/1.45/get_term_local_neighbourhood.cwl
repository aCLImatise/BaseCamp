class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/get_term_local_neighbourhood.pl.cwl
inputs:
- id: obo_input_file
  doc: OBO input file
  type: boolean
  inputBinding:
    prefix: -f
- id: term_id
  doc: term ID
  type: boolean
  inputBinding:
    prefix: -t
- id: relationship_type
  doc: relationship type
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- get_term_local_neighbourhood.pl
