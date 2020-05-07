class: CommandLineTool
id: bunwarpj.cwl
inputs:
- id: landmark_weight
  doc: ': Weight of the landmarks'
  type: string
  inputBinding:
    position: 0
- id: landmark_file
  doc: ': Landmark file'
  type: string
  inputBinding:
    position: 1
- id: affine_file_1
  doc: ': Initial source affine matrix transformation'
  type: string
  inputBinding:
    position: 0
- id: affine_file_2
  doc: ': Initial target affine matrix transformation'
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bunwarpj
