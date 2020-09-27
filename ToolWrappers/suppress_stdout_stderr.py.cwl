class: CommandLineTool
id: suppress_stdout_stderr.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- suppress_stdout_stderr.py
