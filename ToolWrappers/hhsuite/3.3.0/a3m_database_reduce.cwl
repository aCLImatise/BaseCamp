class: CommandLineTool
id: a3m_database_reduce.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hhsuite:3.3.0--py38pl526h6ed170a_0
cwlVersion: v1.1
baseCommand:
- a3m_database_reduce
