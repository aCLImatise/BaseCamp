class: CommandLineTool
id: amino_acids.tsv.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/morpheus:287--0
cwlVersion: v1.1
baseCommand:
- amino_acids.tsv
