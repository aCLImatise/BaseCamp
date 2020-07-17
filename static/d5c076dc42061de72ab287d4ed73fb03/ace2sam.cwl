class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ace2sam.cwl
inputs:
- id: output_padded_sam
  doc: output padded SAM
  type: boolean
  inputBinding:
    prefix: -p
- id: write_contig_sequence
  doc: write the contig sequence in SAM
  type: boolean
  inputBinding:
    prefix: -c
- id: pc
  doc: ''
  type: boolean
  inputBinding:
    prefix: -pc
- id: in_dot_ace
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ace2sam
