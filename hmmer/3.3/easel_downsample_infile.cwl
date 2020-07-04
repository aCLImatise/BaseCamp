class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/easel_downsample_infile.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: easel
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: down_sample
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: m
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- easel
- downsample
- infile
