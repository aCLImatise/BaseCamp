class: CommandLineTool
id: gimme.cwl
inputs:
- id: in_subcommand
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
  dockerPull: quay.io/biocontainers/gimmemotifs:0.15.3--py38hc37a69a_0
cwlVersion: v1.1
baseCommand:
- gimme
