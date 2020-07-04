class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bactopia_citations.py.cwl
inputs:
- id: directory_where_stored
  doc: Directory where Bactopia repository is stored.
  type: string
  inputBinding:
    prefix: --bactopia
- id: var_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: citations
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bactopia-citations.py
