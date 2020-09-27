class: CommandLineTool
id: calib_cons.cwl
inputs:
- id: in_parameter
  doc: ''
  type: string
  inputBinding:
    prefix: --PARAMETER
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- calib_cons
