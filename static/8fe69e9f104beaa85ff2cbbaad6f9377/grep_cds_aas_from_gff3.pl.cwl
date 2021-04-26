class: CommandLineTool
id: grep_cds_aas_from_gff3.pl.cwl
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
- grep_cds_aas_from_gff3.pl
