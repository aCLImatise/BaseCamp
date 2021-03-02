class: CommandLineTool
id: segway_task.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/segway:3.0.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- segway-task
