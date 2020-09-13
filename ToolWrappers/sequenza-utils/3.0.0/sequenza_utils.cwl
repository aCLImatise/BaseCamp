class: CommandLineTool
id: ../../../sequenza_utils.cwl
inputs:
- id: in_verbose
  doc: Show all logging information
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sequenza-utils
