class: CommandLineTool
id: ../../../tripaille_job_add_job.cwl
inputs:
- id: priority
  doc: 'An integer score to prioritize the job  [default: 10]'
  type: long
  inputBinding:
    prefix: --priority
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: module
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: callback
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- job
- add_job
