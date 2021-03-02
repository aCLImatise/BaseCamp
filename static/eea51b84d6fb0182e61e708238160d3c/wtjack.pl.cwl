class: CommandLineTool
id: wtjack.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/admixtools:7.0.1--h1d3628b_0
cwlVersion: v1.1
baseCommand:
- wtjack.pl
