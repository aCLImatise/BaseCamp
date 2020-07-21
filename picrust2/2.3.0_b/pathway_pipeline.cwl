class: CommandLineTool
id: ../../../pathway_pipeline.py.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: Directory
  inputBinding:
    prefix: -o
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- pathway_pipeline.py
