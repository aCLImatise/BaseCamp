class: CommandLineTool
id: call_program.py.cwl
inputs:
- id: in_cmd
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- call_program.py
