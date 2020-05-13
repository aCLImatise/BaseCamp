class: CommandLineTool
id: obisilva.cwl
inputs:
- id: debug
  doc: Set logging in debug mode
  type: boolean
  inputBinding:
    prefix: --DEBUG
- id: without_progress_bar
  doc: desactivate progress bar
  type: boolean
  inputBinding:
    prefix: --without-progress-bar
- id: ssu
  doc: specify that you are interested in the SSU database
  type: boolean
  inputBinding:
    prefix: --ssu
- id: lsu
  doc: specify that you are interested in the LSU database
  type: boolean
  inputBinding:
    prefix: --lsu
- id: parc
  doc: specify that you are interested in the parc version of the database
  type: boolean
  inputBinding:
    prefix: --parc
- id: ref
  doc: specify that you are interested in the reference version of the database
  type: boolean
  inputBinding:
    prefix: --ref
- id: nr
  doc: specify that you are interested in the non redundant version of the database
  type: boolean
  inputBinding:
    prefix: --nr
- id: trunc
  doc: specify that you are interested in the truncated version of database
  type: boolean
  inputBinding:
    prefix: --trunc
- id: local_db
  doc: Local copy of the files located in the specified directory will be used instead
    of those present on the ARB-Silva web site
  type: string
  inputBinding:
    prefix: --localdb
- id: m
  doc: '####, --min-taxid=#### minimal taxid for the species taxid'
  type: boolean
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- obisilva
