class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/finalReport.py.cwl
inputs:
- id: file
  doc: configuration file
  type: File
  inputBinding:
    prefix: --file
outputs: []
cwlVersion: v1.1
baseCommand:
- finalReport.py
