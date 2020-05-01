#!/usr/bin/env cwl-runner

baseCommand:
- arv-ws
class: CommandLineTool
cwlVersion: v1.0
id: arv-ws
inputs:
- doc: Filter events on object_uuid
  id: uuid
  inputBinding:
    prefix: --uuid
  type: string
- doc: Arvados query filter to apply to log events (JSON encoded)
  id: filters
  inputBinding:
    prefix: --filters
  type: string
- doc: 'Arvados query filter to fetch log events created at or after this time. This
    will be server time in UTC. Allowed format: YYYY-MM-DD or YYYY-MM-DD hh:mm:ss'
  id: start_time
  inputBinding:
    prefix: --start-time
  type: string
- doc: Start from given log id.
  id: id
  inputBinding:
    prefix: --id
  type: string
- doc: If websockets is not available, specify the polling interval, default is every
    15 seconds
  id: poll_interval
  inputBinding:
    prefix: --poll-interval
  type: string
- doc: Do not poll if websockets are not available, just fail
  id: no_poll
  inputBinding:
    prefix: --no-poll
  type: boolean
- doc: Supply pipeline uuid, print log output from pipeline and its jobs
  id: pipeline
  inputBinding:
    prefix: --pipeline
  type: string
- doc: Supply job uuid, print log output from jobs
  id: job
  inputBinding:
    prefix: --job
  type: string
