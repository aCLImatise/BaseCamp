class: CommandLineTool
id: nf_core_create.cwl
inputs:
- id: name
  doc: The name of your new pipeline  [required]
  type: string
  inputBinding:
    prefix: --name
- id: description
  doc: A short description of your pipeline  [required]
  type: string
  inputBinding:
    prefix: --description
- id: author
  doc: Name of the main author(s)  [required]
  type: string
  inputBinding:
    prefix: --author
- id: new_version
  doc: The initial version number to use
  type: string
  inputBinding:
    prefix: --new-version
- id: no_git
  doc: Do not initialise pipeline as new git repository
  type: boolean
  inputBinding:
    prefix: --no-git
- id: force
  doc: Overwrite output directory if it already exists
  type: boolean
  inputBinding:
    prefix: --force
- id: outdir
  doc: 'Output directory for new pipeline (default: pipeline name)'
  type: string
  inputBinding:
    prefix: --outdir
outputs: []
cwlVersion: v1.1
baseCommand:
- nf-core
- create
