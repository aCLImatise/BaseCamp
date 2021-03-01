class: CommandLineTool
id: bpipe_jobs.cwl
inputs:
- id: in_all
  doc: Show completed  as well as running jobs
  type: boolean?
  inputBinding:
    prefix: -all
- id: in_sleep
  doc: Sleep time when watching continuously
  type: string?
  inputBinding:
    prefix: -sleep
- id: in_watch
  doc: Show continuously updated display
  type: boolean?
  inputBinding:
    prefix: -watch
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bpipe
- jobs
