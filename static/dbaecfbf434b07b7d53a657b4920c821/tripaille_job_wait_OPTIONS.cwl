class: CommandLineTool
id: tripaille_job_wait_OPTIONS.cwl
inputs:
- id: job_id
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- job
- wait
- OPTIONS
