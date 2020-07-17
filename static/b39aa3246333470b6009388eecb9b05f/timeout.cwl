class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/timeout.cwl
inputs:
- id: preserve_status
  doc: exit with the same status as COMMAND, even when the command times out
  type: boolean
  inputBinding:
    prefix: --preserve-status
- id: foreground
  doc: when not running timeout directly from a shell prompt, allow COMMAND to read
    from the TTY and get TTY signals; in this mode, children of COMMAND will not be
    timed out
  type: boolean
  inputBinding:
    prefix: --foreground
- id: kill_after
  doc: also send a KILL signal if COMMAND is still running this long after the initial
    signal was sent
  type: string
  inputBinding:
    prefix: --kill-after
- id: signal
  doc: specify the signal to be sent on timeout; SIGNAL may be a name like 'HUP' or
    a number; see 'kill -l' for a list of signals
  type: string
  inputBinding:
    prefix: --signal
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: duration
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: arg
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- timeout
