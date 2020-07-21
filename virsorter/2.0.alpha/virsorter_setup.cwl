class: CommandLineTool
id: ../../../virsorter_setup.cwl
inputs:
- id: db_dir
  doc: diretory path for databases  [required]
  type: File
  inputBinding:
    prefix: --db-dir
- id: jobs
  doc: 'number of simultaneous downloads  [default: 8]'
  type: long
  inputBinding:
    prefix: --jobs
- id: snake_make_args
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- virsorter
- setup
