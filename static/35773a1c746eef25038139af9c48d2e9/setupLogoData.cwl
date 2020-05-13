class: CommandLineTool
id: setupLogoData.py.cwl
inputs:
- id: all
  doc: Fetch all data sets.
  type: boolean
  inputBinding:
    prefix: --all
outputs: []
cwlVersion: v1.1
baseCommand:
- setupLogoData.py
