class: CommandLineTool
id: parallel_blat.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- parallel_blat.py
