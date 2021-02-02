class: CommandLineTool
id: expand.cwl
inputs:
- id: in_initial
  doc: do not convert tabs after non blanks
  type: boolean
  inputBinding:
    prefix: --initial
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- expand
