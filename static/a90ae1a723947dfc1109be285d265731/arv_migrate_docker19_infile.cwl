class: CommandLineTool
id: arv_migrate_docker19_infile.cwl
inputs:
- id: in_force
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_verbose
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_arv_migrate_docker_one_nine
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- arv-migrate-docker19
- infile
