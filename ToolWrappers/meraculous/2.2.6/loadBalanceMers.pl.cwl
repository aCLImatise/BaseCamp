class: CommandLineTool
id: loadBalanceMers.pl.cwl
inputs:
- id: in_mer_count_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_num_of_prefix_blocks
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- loadBalanceMers.pl
