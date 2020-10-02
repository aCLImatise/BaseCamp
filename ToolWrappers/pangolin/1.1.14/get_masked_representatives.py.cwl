class: CommandLineTool
id: get_masked_representatives.py.cwl
inputs:
- id: in_representatives
  doc: ''
  type: string
  inputBinding:
    prefix: --representatives
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- get_masked_representatives.py
