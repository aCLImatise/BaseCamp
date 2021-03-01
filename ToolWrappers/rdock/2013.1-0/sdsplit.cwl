class: CommandLineTool
id: sdsplit.cwl
inputs:
- id: in_outputroot_root_name
  doc: <OutputRoot>  Root name for output files (default = tmp)
  type: boolean?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sdsplit
