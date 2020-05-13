class: CommandLineTool
id: tripaille_job_get_logs_STDOUT.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: stdout
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: stderr
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- job
- get_logs
- STDOUT
