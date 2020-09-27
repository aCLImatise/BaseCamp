class: CommandLineTool
id: plot_dia_windows.py.cwl
inputs:
- id: in_window_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_precursor_map
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- plot_dia_windows.py
