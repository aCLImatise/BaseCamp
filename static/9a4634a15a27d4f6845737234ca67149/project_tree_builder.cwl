class: CommandLineTool
id: project_tree_builder.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/blast:2.11.0--pl526he19e7b1_0
cwlVersion: v1.1
baseCommand:
- project_tree_builder
