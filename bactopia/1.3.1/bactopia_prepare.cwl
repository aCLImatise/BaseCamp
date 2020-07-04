class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bactopia_prepare.py.cwl
inputs:
- id: e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: pattern
  doc: ''
  type: string
  inputBinding:
    prefix: --pattern
- id: bac_topia
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: prepare
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: str
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bactopia-prepare.py
