class: CommandLineTool
id: pslxToFa.cwl
inputs:
- id: in_lift_target
  doc: "-liftQuery=liftQuery.lft\n"
  type: string
  inputBinding:
    prefix: -liftTarget
- id: in_in_dot_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pslxToFa
