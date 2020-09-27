class: CommandLineTool
id: arv_ws.cwl
inputs:
- id: in_uuid
  doc: Filter events on object_uuid
  type: string
  inputBinding:
    prefix: --uuid
- id: in_filters
  doc: "Arvados query filter to apply to log events (JSON\nencoded)"
  type: string
  inputBinding:
    prefix: --filters
- id: in_start_time
  doc: "Arvados query filter to fetch log events created at or\nafter this time. This\
    \ will be server time in UTC.\nAllowed format: YYYY-MM-DD or YYYY-MM-DD hh:mm:ss"
  type: string
  inputBinding:
    prefix: --start-time
- id: in_id
  doc: Start from given log id.
  type: string
  inputBinding:
    prefix: --id
- id: in_poll_interval
  doc: "If websockets is not available, specify the polling\ninterval, default is\
    \ every 15 seconds"
  type: long
  inputBinding:
    prefix: --poll-interval
- id: in_no_poll
  doc: Do not poll if websockets are not available, just fail
  type: boolean
  inputBinding:
    prefix: --no-poll
- id: in_pipeline
  doc: "Supply pipeline uuid, print log output from pipeline\nand its jobs"
  type: string
  inputBinding:
    prefix: --pipeline
- id: in_job
  doc: Supply job uuid, print log output from jobs
  type: string
  inputBinding:
    prefix: --job
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- arv-ws
