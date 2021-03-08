class: CommandLineTool
id: nextstrain_shell.cwl
inputs:
- id: in_help_all
  doc: Show a full help message of all options and exit
  type: boolean?
  inputBinding:
    prefix: --help-all
- id: in_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nextstrain-cli:3.0.3--py_0
cwlVersion: v1.1
baseCommand:
- nextstrain
- shell
