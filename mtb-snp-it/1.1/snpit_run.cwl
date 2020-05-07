class: CommandLineTool
id: snpit_run.py.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    prefix: --input
outputs: []
cwlVersion: v1.1
baseCommand:
- snpit-run.py
