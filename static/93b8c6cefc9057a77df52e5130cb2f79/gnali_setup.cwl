class: CommandLineTool
id: gnali_setup.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gnali:1.0.3--py37heccd8a3_0
cwlVersion: v1.1
baseCommand:
- gnali_setup
