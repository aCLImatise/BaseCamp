class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/exonerate_server.cwl
inputs:
- id: soft_mask_query
  doc: '[FALSE] '
  type: boolean
  inputBinding:
    prefix: --softmaskquery
- id: soft_mask_target
  doc: '[FALSE] '
  type: boolean
  inputBinding:
    prefix: --softmasktarget
outputs: []
cwlVersion: v1.1
baseCommand:
- exonerate-server
