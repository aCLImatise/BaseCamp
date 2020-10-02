class: CommandLineTool
id: pwd.cwl
inputs:
- id: in_logical
  doc: use PWD from environment, even if it contains symlinks
  type: boolean
  inputBinding:
    prefix: --logical
- id: in_physical
  doc: avoid all symlinks
  type: boolean
  inputBinding:
    prefix: --physical
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pwd
