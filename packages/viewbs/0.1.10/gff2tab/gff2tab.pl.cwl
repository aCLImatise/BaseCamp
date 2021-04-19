class: CommandLineTool
id: gff2tab.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/viewbs:0.1.10--pl5262h779adbc_0
cwlVersion: v1.1
baseCommand:
- gff2tab.pl
