class: CommandLineTool
id: pbsEncode.cwl
inputs:
- id: discard_gaps
  doc: Discard gaps in the PBS.  Gaps in the input data are assumed to be represented
    by rows consisting of a single "-" character.
  type: boolean
  inputBinding:
    prefix: --discard-gaps
outputs: []
cwlVersion: v1.1
baseCommand:
- pbsEncode
