class: CommandLineTool
id: combine_subexons.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/psiclass:1.0.2--he1b5a44_0
cwlVersion: v1.1
baseCommand:
- combine-subexons
