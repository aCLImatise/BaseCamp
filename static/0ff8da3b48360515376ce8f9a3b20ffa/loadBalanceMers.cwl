class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/loadBalanceMers.pl.cwl
inputs:
- id: mer_count_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: num_of_prefix_blocks
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- loadBalanceMers.pl
