class: CommandLineTool
id: fconsense.cwl
inputs:
- id: method
  doc: 'menu       [mre] Consensus method (Values: s (strict consensus tree); mr (Majority
    Rule); mre (Majority Rule (extended)); ml (Minimum fraction (0.5 to 1.0)))'
  type: boolean
  inputBinding:
    prefix: -method
outputs: []
cwlVersion: v1.1
baseCommand:
- fconsense
