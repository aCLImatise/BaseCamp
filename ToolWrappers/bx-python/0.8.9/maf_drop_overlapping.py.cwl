class: CommandLineTool
id: maf_drop_overlapping.py.cwl
inputs:
- id: in_interval
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_files_dot_dot_dot
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
- maf_drop_overlapping.py
