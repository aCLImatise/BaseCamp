class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/spectrast2spectrast_irt.py.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: sp_lib_slash_sp_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- spectrast2spectrast_irt.py
