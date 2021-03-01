class: CommandLineTool
id: seqdb_perf.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rmblast:2.10.0--h2d02072_0
cwlVersion: v1.1
baseCommand:
- seqdb_perf
