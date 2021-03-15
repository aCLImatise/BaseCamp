class: CommandLineTool
id: meryl_analyze.cwl
inputs:
- id: in_prefix
  doc: ''
  type: string?
  inputBinding:
    prefix: -prefix
- id: in_mers
  doc: ''
  type: string?
  inputBinding:
    prefix: -mers
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/meryl:1.2--he1b5a44_0
cwlVersion: v1.1
baseCommand:
- meryl-analyze
