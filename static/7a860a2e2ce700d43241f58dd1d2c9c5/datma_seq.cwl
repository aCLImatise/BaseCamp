class: CommandLineTool
id: ../../../datma_seq.py.cwl
inputs:
- id: file
  doc: configuration file
  type: File
  inputBinding:
    prefix: --file
outputs: []
cwlVersion: v1.1
baseCommand:
- datma_seq.py
