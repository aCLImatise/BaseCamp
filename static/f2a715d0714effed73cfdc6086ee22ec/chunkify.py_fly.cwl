class: CommandLineTool
id: chunkify.py_fly.cwl
inputs:
- id: in_chunk_if_y_do_tpy
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
- chunkify.py
- fly
