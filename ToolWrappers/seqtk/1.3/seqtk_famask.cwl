class: CommandLineTool
id: seqtk_famask.cwl
inputs:
- id: in_src_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_mask_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- seqtk
- famask
