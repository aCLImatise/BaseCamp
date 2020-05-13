class: CommandLineTool
id: bactopia_prepare.py.cwl
inputs:
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
outputs: []
cwlVersion: v1.1
baseCommand:
- bactopia-prepare.py
