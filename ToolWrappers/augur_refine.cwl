class: CommandLineTool
id: augur_refine.cwl
inputs:
- id: in_tree
  doc: ''
  type: string
  inputBinding:
    prefix: --tree
- id: in_alignment
  doc: ''
  type: string
  inputBinding:
    prefix: --alignment
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- augur
- refine
