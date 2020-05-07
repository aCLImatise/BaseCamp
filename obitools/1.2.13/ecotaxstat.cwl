class: CommandLineTool
id: ecotaxstat.cwl
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
- id: eco_pcr_db
  doc: ecoPCR Database name
  type: File
  inputBinding:
    prefix: --ecopcrdb
- id: required
  doc: required taxid
  type: string
  inputBinding:
    prefix: --required
outputs: []
cwlVersion: v1.1
baseCommand:
- ecotaxstat
