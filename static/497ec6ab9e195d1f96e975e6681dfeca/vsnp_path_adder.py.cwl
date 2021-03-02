class: CommandLineTool
id: vsnp_path_adder.py.cwl
inputs:
- id: in_cwd
  doc: "Absolute directory path to be added to find reference\noption files."
  type: Directory?
  inputBinding:
    prefix: --cwd
- id: in_show
  doc: Show available directories.
  type: boolean?
  inputBinding:
    prefix: --show
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_prog
  doc: ''
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
- vsnp_path_adder.py
