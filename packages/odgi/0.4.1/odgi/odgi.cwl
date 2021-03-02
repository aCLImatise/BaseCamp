class: CommandLineTool
id: odgi.cwl
inputs:
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/odgi:0.4.1--py36hd181a71_0
cwlVersion: v1.1
baseCommand:
- odgi
