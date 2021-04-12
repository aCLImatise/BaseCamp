class: CommandLineTool
id: peptide_shaker.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/peptide-shaker:2.0.18--h779adbc_1
cwlVersion: v1.1
baseCommand:
- peptide-shaker
