class: CommandLineTool
id: tripaille_job_wait_JOB_ID.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: job_id
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- job
- wait
- JOB_ID
