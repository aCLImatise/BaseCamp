class: CommandLineTool
id: tripaille_job_add_job.cwl
inputs:
- id: in_priority
  doc: 'An integer score to prioritize the job  [default: 10]'
  type: long
  inputBinding:
    prefix: --priority
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_module
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_callback
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tripaille
- job
- add_job
