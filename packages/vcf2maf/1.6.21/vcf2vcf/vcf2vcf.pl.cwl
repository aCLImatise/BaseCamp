class: CommandLineTool
id: vcf2vcf.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vcf2maf:1.6.21--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- vcf2vcf.pl
