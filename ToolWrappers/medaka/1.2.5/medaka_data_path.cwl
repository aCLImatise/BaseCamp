class: CommandLineTool
id: medaka_data_path.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/medaka:1.2.5--py38h64b100c_0
cwlVersion: v1.1
baseCommand:
- medaka_data_path
