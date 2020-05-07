class: CommandLineTool
id: obipr2.cwl
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
- id: local_db
  doc: Local copy of the files located in the specified directory will be used instead
    of those present on the PR2 web site
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
- obipr2
