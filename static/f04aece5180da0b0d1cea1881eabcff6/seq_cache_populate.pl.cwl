class: CommandLineTool
id: seq_cache_populate.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/samtools:1.11--h6270b1f_0
cwlVersion: v1.1
baseCommand:
- seq_cache_populate.pl
