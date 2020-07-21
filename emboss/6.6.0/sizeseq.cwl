class: CommandLineTool
id: ../../../sizeseq.cwl
inputs:
- id: descending
  doc: boolean    [N] By default the shortest sequence is given first.
  type: boolean
  inputBinding:
    prefix: -descending
outputs: []
cwlVersion: v1.1
baseCommand:
- sizeseq
