class: CommandLineTool
id: TQS.py.cwl
inputs:
- id: length
  doc: Length of sequence reads (i.e. Number of sequencing cycles, default=36)
  type: string
  inputBinding:
    prefix: --length
- id: threshold
  doc: Base intensity threshold value (-40 to 40, default=5)
  type: string
  inputBinding:
    prefix: --threshold
- id: difference
  doc: Base intensity difference between top intensity and second best (1 to 80, default=5)
  type: string
  inputBinding:
    prefix: --difference
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
- TQS.py
