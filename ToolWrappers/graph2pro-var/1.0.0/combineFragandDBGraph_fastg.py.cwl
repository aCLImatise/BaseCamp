class: CommandLineTool
id: combineFragandDBGraph_fastg.py.cwl
inputs:
- id: in_continue
  doc: ^
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- combineFragandDBGraph_fastg.py
