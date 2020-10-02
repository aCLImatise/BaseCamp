class: CommandLineTool
id: virsorter_setup.cwl
inputs:
- id: in_db_dir
  doc: diretory path for databases  [required]
  type: File
  inputBinding:
    prefix: --db-dir
- id: in_jobs
  doc: 'number of simultaneous downloads  [default: 8]'
  type: long
  inputBinding:
    prefix: --jobs
- id: in_snake_make_args
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- virsorter
- setup
