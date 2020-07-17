class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/empDist.pl.cwl
inputs:
- id: freq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- empDist.pl
