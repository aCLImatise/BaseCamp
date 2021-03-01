class: CommandLineTool
id: TRFMask.cwl
inputs:
- id: in_repeat_modeler
  doc: COPYRIGHT
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
- TRFMask
