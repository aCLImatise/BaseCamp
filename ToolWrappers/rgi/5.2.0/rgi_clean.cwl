class: CommandLineTool
id: rgi_clean.cwl
inputs:
- id: in_local
  doc: "use local database (default: uses database in executable\ndirectory)"
  type: boolean?
  inputBinding:
    prefix: --local
- id: in_debug
  doc: debug mode
  type: boolean?
  inputBinding:
    prefix: --debug
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
- clean
