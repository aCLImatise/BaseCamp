class: CommandLineTool
id: get_dia_windows.py_output_file.cwl
inputs:
- id: tims_analysis_directory
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- get_dia_windows.py
- output_file
