class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/extract_markers.py.cwl
inputs:
- id: mpa_pkl
  doc: ''
  type: string
  inputBinding:
    prefix: --mpa_pkl
- id: ifn_markers
  doc: ''
  type: string
  inputBinding:
    prefix: --ifn_markers
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_markers.py
