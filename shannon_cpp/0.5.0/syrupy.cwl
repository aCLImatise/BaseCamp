#!/usr/bin/env cwl-runner

baseCommand:
- syrupy.py
class: CommandLineTool
cwlVersion: v1.0
id: syrupy.py
inputs:
- doc: ''
  id: syrupy_options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: command
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: command_options
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: command_args
  inputBinding:
    position: 3
  type: string
- doc: ignore COMMAND if given, and poll external process with specified PID
  id: poll_pid
  inputBinding:
    prefix: --poll-pid
  type: string
- doc: use SSH to remote view PS with syrupy
  id: ssh
  inputBinding:
    prefix: --ssh
  type: string
- doc: ignore COMMAND if given and poll top MEM processes by memory usage
  id: poll_top_memory
  inputBinding:
    prefix: --poll-top-memory
  type: string
- doc: ignore COMMAND if given, and poll external process with command matching specified
    regular expression pattern
  id: poll_command
  inputBinding:
    prefix: --poll-command
  type: string
- doc: '#.##, --interval=#.## polling interval in seconds (default=1)'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: redirect Syrupy output and miscellaneous information to standard output and
    standard error instead of logging to files
  id: syrupy_in_front
  inputBinding:
    prefix: --syrupy-in-front
  type: boolean
- doc: 'run COMMAND in foreground: send output and error stream of COMMAND to standard
    output and standard error, respectively'
  id: command_in_front
  inputBinding:
    prefix: --command-in-front
  type: boolean
- doc: suppress all output from COMMAND
  id: no_command_output
  inputBinding:
    prefix: --no-command-output
  type: boolean
- doc: force flushing of stream buffers after every write
  id: flush_output
  inputBinding:
    prefix: --flush-output
  type: boolean
- doc: suppress writing of raw results from process sampling
  id: no_raw_process_log
  inputBinding:
    prefix: --no-raw-process-log
  type: boolean
- doc: show command column in output
  id: show_command
  inputBinding:
    prefix: --show-command
  type: boolean
- doc: character(s) to used to separate columns in results
  id: separator
  inputBinding:
    prefix: --separator
  type: string
- doc: do not align/justify columns
  id: no_align
  inputBinding:
    prefix: --no-align
  type: boolean
- doc: do not output column headers
  id: no_headers
  inputBinding:
    prefix: --no-headers
  type: boolean
