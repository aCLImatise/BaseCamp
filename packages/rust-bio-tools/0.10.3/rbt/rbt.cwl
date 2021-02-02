class: CommandLineTool
id: ../../../rbt.cwl
inputs:
- id: in_verbose
  doc: Verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rbt
