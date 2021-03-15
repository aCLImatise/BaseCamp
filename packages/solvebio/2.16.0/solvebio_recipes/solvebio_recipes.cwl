class: CommandLineTool
id: solvebio_recipes.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/solvebio:2.16.0--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- solvebio-recipes
