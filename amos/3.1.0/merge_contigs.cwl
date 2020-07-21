class: CommandLineTool
id: ../../../merge_contigs.cwl
inputs:
- id: output_outprefixmali_file
  doc: Output the <out-prefix>.mali file
  type: boolean
  inputBinding:
    prefix: -a
- id: coords_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cco_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bank_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- merge-contigs
