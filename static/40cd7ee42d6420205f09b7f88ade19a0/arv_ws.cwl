class: CommandLineTool
id: arv_ws.cwl
inputs:
- id: uuid
  doc: Filter events on object_uuid
  type: string
  inputBinding:
    prefix: --uuid
- id: filters
  doc: Arvados query filter to apply to log events (JSON encoded)
  type: string
  inputBinding:
    prefix: --filters
- id: start_time
  doc: 'Arvados query filter to fetch log events created at or after this time. This
    will be server time in UTC. Allowed format: YYYY-MM-DD or YYYY-MM-DD hh:mm:ss'
  type: string
  inputBinding:
    prefix: --start-time
- id: id
  doc: Start from given log id.
  type: string
  inputBinding:
    prefix: --id
- id: poll_interval
  doc: If websockets is not available, specify the polling interval, default is every
    15 seconds
  type: string
  inputBinding:
    prefix: --poll-interval
- id: no_poll
  doc: Do not poll if websockets are not available, just fail
  type: boolean
  inputBinding:
    prefix: --no-poll
- id: pipeline
  doc: Supply pipeline uuid, print log output from pipeline and its jobs
  type: string
  inputBinding:
    prefix: --pipeline
- id: job
  doc: Supply job uuid, print log output from jobs
  type: string
  inputBinding:
    prefix: --job
outputs: []
cwlVersion: v1.1
baseCommand:
- arv-ws
