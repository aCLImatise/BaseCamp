class: CommandLineTool
id: singularity_remote_login.cwl
inputs:
- id: in_token_file
  doc: path to the file holding token
  type: File
  inputBinding:
    prefix: --tokenfile
- id: in_login
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- singularity
- remote
- login
