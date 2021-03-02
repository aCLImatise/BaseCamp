class: CommandLineTool
id: virsorter_setup.cwl
inputs:
- id: in_db_dir
  doc: diretory path for databases  [required]
  type: File?
  inputBinding:
    prefix: --db-dir
- id: in_jobs
  doc: 'number of simultaneous downloads  [default: 8]'
  type: long?
  inputBinding:
    prefix: --jobs
- id: in_skip_deps_install
  doc: "skip dependency installation (if you want to\ninstall on your own as in development\
    \ version)\n[default: False]"
  type: boolean?
  inputBinding:
    prefix: --skip-deps-install
- id: in_snake_make_args
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/virsorter:2.1--py_0
cwlVersion: v1.1
baseCommand:
- virsorter
- setup
