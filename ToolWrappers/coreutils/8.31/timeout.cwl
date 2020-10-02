class: CommandLineTool
id: timeout.cwl
inputs:
- id: in_preserve_status
  doc: "exit with the same status as COMMAND, even when the\ncommand times out"
  type: boolean
  inputBinding:
    prefix: --preserve-status
- id: in_foreground
  doc: "when not running timeout directly from a shell prompt,\nallow COMMAND to read\
    \ from the TTY and get TTY signals;\nin this mode, children of COMMAND will not\
    \ be timed out"
  type: boolean
  inputBinding:
    prefix: --foreground
- id: in_kill_after
  doc: "also send a KILL signal if COMMAND is still running\nthis long after the initial\
    \ signal was sent"
  type: string
  inputBinding:
    prefix: --kill-after
- id: in_signal
  doc: "specify the signal to be sent on timeout;\nSIGNAL may be a name like 'HUP'\
    \ or a number;\nsee 'kill -l' for a list of signals"
  type: long
  inputBinding:
    prefix: --signal
- id: in_verbose
  doc: diagnose to stderr any signal sent upon timeout
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_duration
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_arg
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- timeout
