class: CommandLineTool
id: h52gif.cwl
inputs:
- id: in_i
  doc: ''
  type: long
  inputBinding:
    prefix: -i
- id: in_h_five_file
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_gif_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- h52gif
