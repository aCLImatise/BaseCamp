class: CommandLineTool
id: syrupy.py.cwl
inputs:
- id: syrupy_options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: command_options
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: command_args
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: poll_pid
  doc: ignore COMMAND if given, and poll external process with specified PID
  type: string
  inputBinding:
    prefix: --poll-pid
- id: ssh
  doc: use SSH to remote view PS with syrupy
  type: string
  inputBinding:
    prefix: --ssh
- id: poll_top_memory
  doc: ignore COMMAND if given and poll top MEM processes by memory usage
  type: string
  inputBinding:
    prefix: --poll-top-memory
- id: poll_command
  doc: ignore COMMAND if given, and poll external process with command matching specified
    regular expression pattern
  type: string
  inputBinding:
    prefix: --poll-command
- id: i
  doc: '#.##, --interval=#.## polling interval in seconds (default=1)'
  type: boolean
  inputBinding:
    prefix: -i
- id: syrupy_in_front
  doc: redirect Syrupy output and miscellaneous information to standard output and
    standard error instead of logging to files
  type: boolean
  inputBinding:
    prefix: --syrupy-in-front
- id: command_in_front
  doc: 'run COMMAND in foreground: send output and error stream of COMMAND to standard
    output and standard error, respectively'
  type: boolean
  inputBinding:
    prefix: --command-in-front
- id: no_command_output
  doc: suppress all output from COMMAND
  type: boolean
  inputBinding:
    prefix: --no-command-output
- id: flush_output
  doc: force flushing of stream buffers after every write
  type: boolean
  inputBinding:
    prefix: --flush-output
- id: no_raw_process_log
  doc: suppress writing of raw results from process sampling
  type: boolean
  inputBinding:
    prefix: --no-raw-process-log
- id: show_command
  doc: show command column in output
  type: boolean
  inputBinding:
    prefix: --show-command
- id: separator
  doc: character(s) to used to separate columns in results
  type: string
  inputBinding:
    prefix: --separator
- id: no_align
  doc: do not align/justify columns
  type: boolean
  inputBinding:
    prefix: --no-align
- id: no_headers
  doc: do not output column headers
  type: boolean
  inputBinding:
    prefix: --no-headers
outputs: []
cwlVersion: v1.1
baseCommand:
- syrupy.py
