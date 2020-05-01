#!/usr/bin/env cwl-runner

baseCommand:
- tail
class: CommandLineTool
cwlVersion: v1.0
id: tail
inputs:
- doc: =[+]NUM       output the last NUM bytes; or use -c +NUM to output starting
    with byte NUM of each file
  id: bytes
  inputBinding:
    prefix: --bytes
  type: boolean
- doc: "[={name|descriptor}] output appended data as the file grows; an absent option\
    \ argument means 'descriptor'"
  id: follow
  inputBinding:
    prefix: --follow
  type: boolean
- doc: same as --follow=name --retry
  id: f
  inputBinding:
    prefix: -F
  type: boolean
- doc: =[+]NUM       output the last NUM lines, instead of the last 10; or use -n
    +NUM to output starting with line NUM
  id: lines
  inputBinding:
    prefix: --lines
  type: boolean
- doc: with --follow=name, reopen a FILE which has not changed size after N (default
    5) iterations to see if it has been unlinked or renamed (this is the usual case
    of rotated log files); with inotify, this option is rarely useful
  id: max_unchanged_stats
  inputBinding:
    prefix: --max-unchanged-stats
  type: string
- doc: with -f, terminate after process ID, PID dies
  id: pid
  inputBinding:
    prefix: --pid
  type: string
- doc: never output headers giving file names
  id: silent
  inputBinding:
    prefix: --silent
  type: boolean
- doc: keep trying to open a file if it is inaccessible
  id: retry
  inputBinding:
    prefix: --retry
  type: boolean
- doc: with -f, sleep for approximately N seconds (default 1.0) between iterations;
    with inotify and --pid=P, check process P at least once every N seconds
  id: sleep_interval
  inputBinding:
    prefix: --sleep-interval
  type: string
- doc: always output headers giving file names
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: line delimiter is NUL, not newline
  id: zero_terminated
  inputBinding:
    prefix: --zero-terminated
  type: boolean
