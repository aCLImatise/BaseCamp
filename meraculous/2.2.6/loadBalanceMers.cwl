class: CommandLineTool
id: loadBalanceMers.pl_num_of_prefix_blocks.cwl
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
- num_of_prefix_blocks
