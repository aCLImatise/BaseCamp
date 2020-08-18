class: CommandLineTool
id: ../../../arv_migrate_docker19_infile.cwl
inputs:
- id: verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
- id: force
  doc: ''
  type: boolean
  inputBinding:
    prefix: --force
- id: arv_migrate_docker_one_nine
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- arv-migrate-docker19
- infile
