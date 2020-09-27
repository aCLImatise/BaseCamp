class: CommandLineTool
id: extract_markers.py.cwl
inputs:
- id: in_ifn_markers
  doc: ''
  type: string
  inputBinding:
    prefix: --ifn_markers
- id: in_mpa_pkl
  doc: ''
  type: string
  inputBinding:
    prefix: --mpa_pkl
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- extract_markers.py
