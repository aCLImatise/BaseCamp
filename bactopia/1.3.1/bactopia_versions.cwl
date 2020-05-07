class: CommandLineTool
id: bactopia_versions.py.cwl
inputs:
- id: bac_topia
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: versions
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bac_topia
  doc: Directory where Bactopia repository is stored.
  type: string
  inputBinding:
    prefix: --bactopia
outputs: []
cwlVersion: v1.1
baseCommand:
- bactopia-versions.py
