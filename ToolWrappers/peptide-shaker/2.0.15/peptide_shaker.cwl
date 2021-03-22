class: CommandLineTool
id: peptide_shaker.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/peptide-shaker:2.0.15--h516909a_0
cwlVersion: v1.1
baseCommand:
- peptide-shaker
