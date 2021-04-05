class: CommandLineTool
id: fqlen.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/perl-fastx-reader:1.0.2--pl526_0
cwlVersion: v1.1
baseCommand:
- fqlen.pl
