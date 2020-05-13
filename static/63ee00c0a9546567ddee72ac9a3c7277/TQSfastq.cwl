class: CommandLineTool
id: TQSfastq.py.cwl
inputs:
- id: verbose
  doc: Runs in Verbose mode.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- TQSfastq.py
