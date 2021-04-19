class: CommandLineTool
id: miRNAnchor.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mirnature:1.0--pl5262r35hdfd78af_2
cwlVersion: v1.1
baseCommand:
- miRNAnchor.pl
