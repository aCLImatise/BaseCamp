class: CommandLineTool
id: mafft_distance.cwl
inputs:
- id: in_i
  doc: ''
  type: File
  inputBinding:
    prefix: -i
- id: in_pd
  doc: ''
  type: boolean
  inputBinding:
    prefix: -PD
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mafft-distance
