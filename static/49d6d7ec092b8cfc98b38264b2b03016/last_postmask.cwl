class: CommandLineTool
id: last_postmask.cwl
inputs:
- id: in_in_dot_maf
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
  dockerPull: quay.io/biocontainers/last:1219--h2e03b76_0
cwlVersion: v1.1
baseCommand:
- last-postmask
