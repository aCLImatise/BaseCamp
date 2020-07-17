class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vsnp_path_adder.py.cwl
inputs:
- id: cwd
  doc: Absolute directory path to be added to find reference option files.
  type: Directory
  inputBinding:
    prefix: --cwd
- id: show
  doc: Show available directories.
  type: boolean
  inputBinding:
    prefix: --show
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: prog
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vsnp_path_adder.py
