class: CommandLineTool
id: runidba.py.cwl
inputs:
- id: in_para_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_readfile
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_path_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- runidba.py
