class: CommandLineTool
id: tripaille_job_get_logs_OPTIONS_STDERR.cwl
inputs:
- id: stdout
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: stderr
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- job
- get_logs
- OPTIONS
- STDERR
