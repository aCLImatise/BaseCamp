class: CommandLineTool
id: summation.pl.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: summation_pl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fast_q_read_avg_file_1
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: fast_q_read_avg_file_2
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: fast_read_q_avg_file_n
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- summation.pl
