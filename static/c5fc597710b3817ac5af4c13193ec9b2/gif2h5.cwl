class: CommandLineTool
id: gif2h5.cwl
inputs:
- id: in_gif_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_hdf_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gif2h5
