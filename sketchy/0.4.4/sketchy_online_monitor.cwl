class: CommandLineTool
id: sketchy_online_monitor.cwl
inputs:
- id: interval
  doc: Interval in seconds to check on resource usage
  type: double
  inputBinding:
    prefix: --interval
- id: terminate
  doc: Terminate monitoring if no more processes are active
  type: boolean
  inputBinding:
    prefix: --terminate
- id: early
  doc: Terminate early after this amount of seconds
  type: double
  inputBinding:
    prefix: --early
- id: prefix
  doc: Prefix for data output file when completed or stopped
  type: string
  inputBinding:
    prefix: --prefix
- id: log
  doc: Output to log file instead of terminal
  type: boolean
  inputBinding:
    prefix: --log
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy
- online
- monitor
