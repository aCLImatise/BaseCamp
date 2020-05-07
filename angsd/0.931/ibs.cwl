class: CommandLineTool
id: ibs.cwl
inputs:
- id: glf
  doc: '/-f         input GLF filename:'
  type: boolean
  inputBinding:
    prefix: -glf
- id: seed
  doc: ibs -seed 0 use seed for random start
  type: boolean
  inputBinding:
    prefix: -seed
outputs: []
cwlVersion: v1.1
baseCommand:
- ibs
