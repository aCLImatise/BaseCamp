class: CommandLineTool
id: heartbeat_wrapper.cwl
inputs:
- id: in_exit_file
  doc: '[--directory DIRECTORY]'
  type: File
  inputBinding:
    prefix: --exit-file
- id: in_rate
  doc: 'Heartbeat rate, in seconds (default: 1.0)'
  type: double
  inputBinding:
    prefix: --rate
- id: in_heartbeat_file
  doc: "Path to heartbeat file. The first line will have the\nformat '0 {pid} {pgid}\\\
    n'. The rest are just elapsed\ntime (default: None)"
  type: File
  inputBinding:
    prefix: --heartbeat-file
- id: in_directory
  doc: 'Directory in which to run COMMAND. (default: .)'
  type: Directory
  inputBinding:
    prefix: --directory
- id: in_command
  doc: "System call (to be joined by \" \"). We will block on\nthis and return its\
    \ result."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- heartbeat-wrapper
