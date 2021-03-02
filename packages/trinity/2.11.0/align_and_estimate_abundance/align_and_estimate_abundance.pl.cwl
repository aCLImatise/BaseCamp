class: CommandLineTool
id: align_and_estimate_abundance.pl.cwl
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
- align_and_estimate_abundance.pl
