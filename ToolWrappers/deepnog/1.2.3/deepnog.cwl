class: CommandLineTool
id: deepnog.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deepnog:1.2.3--pyh5bfb8f1_0
cwlVersion: v1.1
baseCommand:
- deepnog
