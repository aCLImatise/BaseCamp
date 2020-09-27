class: CommandLineTool
id: bed12ToBed6.cwl
inputs:
- id: in_force_score_based
  doc: Force the score to be the (1-based) block number from the BED12.
  type: boolean
  inputBinding:
    prefix: -n
- id: in_i
  doc: ''
  type: long
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bed12ToBed6
