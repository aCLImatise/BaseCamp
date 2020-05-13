class: CommandLineTool
id: fastqReadAvg.pl.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_q_read_avg_pl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fast_q_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fastqReadAvg.pl
