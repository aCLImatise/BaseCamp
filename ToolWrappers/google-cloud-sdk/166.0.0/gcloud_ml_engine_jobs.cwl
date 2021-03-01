class: CommandLineTool
id: gcloud_ml_engine_jobs.cwl
inputs:
- id: in_submit
  doc: Cloud ML Engine Jobs submit commands.
  type: string
  inputBinding:
    position: 0
- id: in_cancel
  doc: Cancel a running Cloud ML Engine job.
  type: string
  inputBinding:
    position: 0
- id: in_describe
  doc: Describe a Cloud ML Engine job.
  type: string
  inputBinding:
    position: 1
- id: in_list
  doc: List existing Cloud ML Engine jobs.
  type: string
  inputBinding:
    position: 2
- id: in_stream_logs
  doc: Show logs from a running Cloud ML Engine job.
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- ml-engine
- jobs
