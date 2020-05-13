class: CommandLineTool
id: halRandGen.cwl
inputs:
- id: hal_stats
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: path_of_ouput_hal_alignment_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- halRandGen
