class: CommandLineTool
id: amrfinder_update.cwl
inputs:
- id: database
  doc: ''
  type: string
  inputBinding:
    prefix: --database
- id: quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
- id: threads
  doc: ''
  type: string
  inputBinding:
    prefix: --threads
- id: debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
- id: log
  doc: ''
  type: string
  inputBinding:
    prefix: --log
outputs: []
cwlVersion: v1.1
baseCommand:
- amrfinder_update
