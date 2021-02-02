class: CommandLineTool
id: ../../../pathoscope.cwl
inputs:
- id: in_verbose
  doc: Prints verbose text while running
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pathoscope
