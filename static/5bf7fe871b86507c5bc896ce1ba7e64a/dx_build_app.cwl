class: CommandLineTool
id: dx_build_app.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dxpy:0.306.0--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- dx-build-app
