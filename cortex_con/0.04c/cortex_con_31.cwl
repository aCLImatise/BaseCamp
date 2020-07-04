class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cortex_con_31.cwl
inputs:
- id: input
  doc: ''
  type: File
  inputBinding:
    prefix: --input
- id: mem_height
  doc: ''
  type: string
  inputBinding:
    prefix: --mem_height
- id: dump_binary
  doc: ''
  type: string
  inputBinding:
    prefix: --dump_binary
- id: cortex_con
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cortex_con_31
