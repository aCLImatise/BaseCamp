class: CommandLineTool
id: PyLOH.py_BAF_heatmap.cwl
inputs:
- id: in_filename_base
  doc: Base name of preprocessed files created.
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
- PyLOH.py
- BAF_heatmap
