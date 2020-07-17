class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ibs.cwl
inputs:
- id: glf_slash_f
  doc: 'input GLF filename:'
  type: boolean
  inputBinding:
    prefix: -glf/-f
- id: seed
  doc: ibs -seed 0 use seed for random start
  type: boolean
  inputBinding:
    prefix: -seed
outputs: []
cwlVersion: v1.1
baseCommand:
- ibs
