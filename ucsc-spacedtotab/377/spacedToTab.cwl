class: CommandLineTool
id: ../../../spacedToTab.cwl
inputs:
- id: in_sizes
  doc: ",Y,Z - Force it to have columns of the given widths.\nThe final char in each\
    \ column should be space or newline\n"
  type: string
  inputBinding:
    prefix: -sizes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- spacedToTab
