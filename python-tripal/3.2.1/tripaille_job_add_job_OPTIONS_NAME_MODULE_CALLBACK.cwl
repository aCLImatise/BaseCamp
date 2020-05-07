class: CommandLineTool
id: tripaille_job_add_job_OPTIONS_NAME_MODULE_CALLBACK.cwl
inputs:
- id: priority
  doc: 'An integer score to prioritize the job  [default: 10]'
  type: long
  inputBinding:
    prefix: --priority
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- job
- add_job
- OPTIONS
- NAME
- MODULE
- CALLBACK
