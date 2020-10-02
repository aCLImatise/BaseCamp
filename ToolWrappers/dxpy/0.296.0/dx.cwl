class: CommandLineTool
id: dx.cwl
inputs:
- id: in_env_help
  doc: Display help message for overriding environment
  type: boolean
  inputBinding:
    prefix: --env-help
- id: in_variables
  doc: --version   show program's version number and exit
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dx
