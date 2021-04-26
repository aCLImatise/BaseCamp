class: CommandLineTool
id: COG.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pgcgap:1.0.28--py37pl5262hdfd78af_0
cwlVersion: v1.1
baseCommand:
- COG.pl
