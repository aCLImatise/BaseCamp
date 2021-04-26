class: CommandLineTool
id: rgi_galaxy.cwl
inputs:
- id: in_galaxy_database
  doc: path to CARD data and blast databases
  type: File?
  inputBinding:
    prefix: --galaxy_database
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
- galaxy
