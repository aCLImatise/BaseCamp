class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/summation.pl.cwl
inputs:
- id: fast_q_read_avg_file_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_q_read_avg_file_two
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fast_read_q_avg_file_n
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- summation.pl
