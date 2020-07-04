class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/get_descendent_terms.pl.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- get_descendent_terms.pl
