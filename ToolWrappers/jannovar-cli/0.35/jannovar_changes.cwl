class: CommandLineTool
id: jannovar_changes.cwl
inputs:
- id: in_jan_novar_cli
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
  dockerPull: quay.io/biocontainers/jannovar-cli:0.35--0
cwlVersion: v1.1
baseCommand:
- jannovar
- changes
