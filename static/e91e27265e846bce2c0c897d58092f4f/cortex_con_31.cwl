class: CommandLineTool
id: cortex_con_31.cwl
inputs:
- id: in_dump_binary
  doc: ''
  type: string?
  inputBinding:
    prefix: --dump_binary
- id: in_mem_height
  doc: ''
  type: long?
  inputBinding:
    prefix: --mem_height
- id: in_input
  doc: ''
  type: File?
  inputBinding:
    prefix: --input
- id: in_cortex_con
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cortex_con_31
