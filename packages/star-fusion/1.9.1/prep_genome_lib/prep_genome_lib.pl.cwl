class: CommandLineTool
id: prep_genome_lib.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/star-fusion:1.9.1--0
cwlVersion: v1.1
baseCommand:
- prep_genome_lib.pl
