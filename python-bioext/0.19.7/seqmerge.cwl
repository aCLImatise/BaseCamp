class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/seqmerge.cwl
inputs:
- id: separator
  doc: sequence count will be appended as '(SEP)COUNT'
  type: string
  inputBinding:
    prefix: --separator
outputs: []
cwlVersion: v1.1
baseCommand:
- seqmerge
