class: CommandLineTool
id: rgi_database.cwl
inputs:
- id: in_local
  doc: "use local database (default: uses database in executable\ndirectory)"
  type: boolean?
  inputBinding:
    prefix: --local
- id: in_all
  doc: "data version number used for `rgi bwt` and `rgi main`\n(default: rgi main)\n"
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rgi:5.2.0--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- rgi
- database
