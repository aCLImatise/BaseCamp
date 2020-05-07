class: CommandLineTool
id: tripaille_job_add_job_OPTIONS_NAME_CALLBACK.cwl
inputs:
- id: module
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: callback
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- job
- add_job
- OPTIONS
- NAME
- CALLBACK
