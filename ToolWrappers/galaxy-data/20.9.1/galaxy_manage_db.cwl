class: CommandLineTool
id: galaxy_manage_db.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-data:20.9.1--py_2
cwlVersion: v1.1
baseCommand:
- galaxy-manage-db
