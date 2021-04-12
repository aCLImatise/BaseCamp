class: CommandLineTool
id: compare_intervals_exact.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/braker2:2.1.6--hdfd78af_1
cwlVersion: v1.1
baseCommand:
- compare_intervals_exact.pl
