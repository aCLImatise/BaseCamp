class: CommandLineTool
id: tripaille_job_wait.cwl
inputs:
- id: in_job_id
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tripaille
- job
- wait
