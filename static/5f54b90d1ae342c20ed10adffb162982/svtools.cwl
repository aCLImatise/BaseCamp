class: CommandLineTool
id: ../../../svtools.cwl
inputs:
- id: in_support
  doc: information on obtaining support
  type: boolean
  inputBinding:
    prefix: --support
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- svtools
