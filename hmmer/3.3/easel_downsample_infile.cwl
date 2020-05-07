class: CommandLineTool
id: easel_downsample_infile.cwl
inputs:
- id: m
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- easel
- downsample
- infile
