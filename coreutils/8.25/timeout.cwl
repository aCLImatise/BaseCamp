#!/usr/bin/env cwl-runner

baseCommand:
- timeout
class: CommandLineTool
cwlVersion: v1.0
id: timeout
inputs:
- doc: exit with the same status as COMMAND, even when the command times out
  id: preserve_status
  inputBinding:
    prefix: --preserve-status
  type: boolean
- doc: when not running timeout directly from a shell prompt, allow COMMAND to read
    from the TTY and get TTY signals; in this mode, children of COMMAND will not be
    timed out
  id: foreground
  inputBinding:
    prefix: --foreground
  type: boolean
- doc: also send a KILL signal if COMMAND is still running this long after the initial
    signal was sent
  id: kill_after
  inputBinding:
    prefix: --kill-after
  type: string
- doc: specify the signal to be sent on timeout; SIGNAL may be a name like 'HUP' or
    a number; see 'kill -l' for a list of signals
  id: signal
  inputBinding:
    prefix: --signal
  type: string
