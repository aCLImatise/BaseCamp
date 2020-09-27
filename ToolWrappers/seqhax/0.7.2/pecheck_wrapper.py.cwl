class: CommandLineTool
id: pecheck_wrapper.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pecheck-wrapper.py
