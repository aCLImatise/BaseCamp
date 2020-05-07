class: CommandLineTool
id: plot_dia_windows.py_precursor_map.cwl
inputs:
- id: window_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: precursor_map
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- plot_dia_windows.py
- precursor_map
