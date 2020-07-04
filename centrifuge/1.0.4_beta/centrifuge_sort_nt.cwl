class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/centrifuge_sort_nt.pl.cwl
inputs:
- id: output_mappings_present
  doc: Output mappings that are present in sequence file to file str
  type: string
  inputBinding:
    prefix: -m
- id: output_acs_wo
  doc: Output ACs w/o mapping to file str
  type: string
  inputBinding:
    prefix: -a
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mapping_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- centrifuge-sort-nt.pl
