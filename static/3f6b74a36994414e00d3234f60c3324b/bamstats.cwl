class: CommandLineTool
id: bamstats.py.cwl
inputs:
- id: output
  doc: Output CSV file name
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- bamstats.py
