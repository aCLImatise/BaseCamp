class: CommandLineTool
id: halRandGen.cwl
inputs:
- id: in_preset
  doc: <small, medium, big, large> [medum]
  type: boolean
  inputBinding:
    prefix: --preset
- id: in_seed
  doc: '[system time]'
  type: long
  inputBinding:
    prefix: --seed
- id: in_hal_stats
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_path_of_ouput_hal_alignment_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- halRandGen
