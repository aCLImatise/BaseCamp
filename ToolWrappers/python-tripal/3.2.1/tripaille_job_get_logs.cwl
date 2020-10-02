class: CommandLineTool
id: tripaille_job_get_logs.cwl
inputs:
- id: in_stdout
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_stderr
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tripaille
- job
- get_logs
