class: CommandLineTool
id: insilico_read_normalization.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/trinity:2.11.0--h5ef6573_1
cwlVersion: v1.1
baseCommand:
- insilico_read_normalization.pl
