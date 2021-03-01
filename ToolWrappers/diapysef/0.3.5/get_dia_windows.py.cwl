class: CommandLineTool
id: get_dia_windows.py.cwl
inputs:
- id: in_tims_analysis_directory
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- get_dia_windows.py
