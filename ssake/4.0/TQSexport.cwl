class: CommandLineTool
id: TQSexport.py.cwl
inputs:
- id: consec
  doc: Minimum number of consecutive bases passing threshold values (default=20)
  type: string
  inputBinding:
    prefix: --consec
- id: verbose
  doc: Runs in Verbose mode.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- TQSexport.py
