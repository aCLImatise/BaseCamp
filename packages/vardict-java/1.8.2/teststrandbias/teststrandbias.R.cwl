class: CommandLineTool
id: teststrandbias.R.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vardict-java:1.8.2--0
cwlVersion: v1.1
baseCommand:
- teststrandbias.R
