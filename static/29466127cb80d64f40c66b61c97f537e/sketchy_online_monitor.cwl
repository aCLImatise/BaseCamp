class: CommandLineTool
id: sketchy_online_monitor.cwl
inputs:
- id: in_interval
  doc: Interval in seconds to check on resource usage
  type: double?
  inputBinding:
    prefix: --interval
- id: in_terminate
  doc: Terminate monitoring if no more processes are active
  type: boolean?
  inputBinding:
    prefix: --terminate
- id: in_early
  doc: Terminate early after this amount of seconds
  type: double?
  inputBinding:
    prefix: --early
- id: in_prefix
  doc: Prefix for data output file when completed or stopped
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_log
  doc: Output to log file instead of terminal
  type: File?
  inputBinding:
    prefix: --log
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: Prefix for data output file when completed or stopped
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
- id: out_log
  doc: Output to log file instead of terminal
  type: File?
  outputBinding:
    glob: $(inputs.in_log)
hints: []
cwlVersion: v1.1
baseCommand:
- sketchy
- online
- monitor
