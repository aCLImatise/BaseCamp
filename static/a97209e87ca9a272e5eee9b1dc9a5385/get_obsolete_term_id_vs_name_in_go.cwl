class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/get_obsolete_term_id_vs_name_in_go.pl.cwl
inputs:
- id: obo_input_file
  doc: OBO input file
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- get_obsolete_term_id_vs_name_in_go.pl
