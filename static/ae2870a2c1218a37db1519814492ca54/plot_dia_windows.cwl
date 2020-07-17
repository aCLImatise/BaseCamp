class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/plot_dia_windows.py.cwl
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
