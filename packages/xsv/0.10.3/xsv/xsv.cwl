class: CommandLineTool
id: ../../../xsv.cwl
inputs:
- id: in_list
  doc: List all commands available.
  type: boolean
  inputBinding:
    prefix: --list
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- xsv
