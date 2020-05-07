class: CommandLineTool
id: tripaille_job_get_logs_OPTIONS_STDOUT.cwl
inputs:
- id: stderr
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- job
- get_logs
- OPTIONS
- STDOUT
