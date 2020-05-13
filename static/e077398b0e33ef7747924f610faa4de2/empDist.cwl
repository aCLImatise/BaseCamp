class: CommandLineTool
id: empDist.pl.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: emp_dist_pl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: freq_file
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
- empDist.pl
