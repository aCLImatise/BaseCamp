class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/transposcope_align_host_reference.cwl
inputs:
- id: genes
  doc: ''
  type: string
  inputBinding:
    prefix: --genes
- id: group_one
  doc: ''
  type: string
  inputBinding:
    prefix: --group1
- id: transpo_scope
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: align
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- transposcope
- align
- host_reference
