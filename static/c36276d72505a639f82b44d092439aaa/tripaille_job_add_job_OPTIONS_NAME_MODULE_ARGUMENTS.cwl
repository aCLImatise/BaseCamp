class: CommandLineTool
id: tripaille_job_add_job_OPTIONS_NAME_MODULE_ARGUMENTS.cwl
inputs:
- id: callback
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- job
- add_job
- OPTIONS
- NAME
- MODULE
- ARGUMENTS
