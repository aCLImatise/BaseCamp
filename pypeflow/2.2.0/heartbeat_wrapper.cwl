class: CommandLineTool
id: heartbeat_wrapper.cwl
inputs:
- id: command
  doc: System call (to be joined by " "). We will block on this and return its result.
  type: string
  inputBinding:
    position: 0
- id: rate
  doc: 'Heartbeat rate, in seconds (default: 1.0)'
  type: string
  inputBinding:
    prefix: --rate
- id: heartbeat_file
  doc: "Path to heartbeat file. The first line will have the format '0 {pid} {pgid}\\\
    n'. The rest are just elapsed time (default: None)"
  type: string
  inputBinding:
    prefix: --heartbeat-file
- id: exit_file
  doc: "Path to exit sentinel file. At end, it will have the format '{exit_code}'\
    \ (default: None)"
  type: string
  inputBinding:
    prefix: --exit-file
- id: directory
  doc: 'Directory in which to run COMMAND. (default: .)'
  type: Directory
  inputBinding:
    prefix: --directory
outputs: []
cwlVersion: v1.1
baseCommand:
- heartbeat-wrapper
