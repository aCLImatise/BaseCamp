class: CommandLineTool
id: _sigcleave.cwl
inputs:
- id: min_weight
  doc: float      [3.5] Minimum scoring weight value for the predicted cleavage site
    (Number from 0.000 to 100.000)
  type: boolean
  inputBinding:
    prefix: -minweight
outputs: []
cwlVersion: v1.1
baseCommand:
- _sigcleave
