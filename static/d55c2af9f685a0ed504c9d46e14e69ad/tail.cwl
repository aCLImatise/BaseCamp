class: CommandLineTool
id: tail.cwl
inputs:
- id: bytes
  doc: =[+]NUM       output the last NUM bytes; or use -c +NUM to output starting
    with byte NUM of each file
  type: boolean
  inputBinding:
    prefix: --bytes
- id: follow
  doc: "[={name|descriptor}] output appended data as the file grows; an absent option\
    \ argument means 'descriptor'"
  type: boolean
  inputBinding:
    prefix: --follow
- id: f
  doc: same as --follow=name --retry
  type: boolean
  inputBinding:
    prefix: -F
- id: lines
  doc: =[+]NUM       output the last NUM lines, instead of the last 10; or use -n
    +NUM to output starting with line NUM
  type: boolean
  inputBinding:
    prefix: --lines
- id: max_unchanged_stats
  doc: with --follow=name, reopen a FILE which has not changed size after N (default
    5) iterations to see if it has been unlinked or renamed (this is the usual case
    of rotated log files); with inotify, this option is rarely useful
  type: string
  inputBinding:
    prefix: --max-unchanged-stats
- id: pid
  doc: with -f, terminate after process ID, PID dies
  type: string
  inputBinding:
    prefix: --pid
- id: silent
  doc: never output headers giving file names
  type: boolean
  inputBinding:
    prefix: --silent
- id: retry
  doc: keep trying to open a file if it is inaccessible
  type: boolean
  inputBinding:
    prefix: --retry
- id: sleep_interval
  doc: with -f, sleep for approximately N seconds (default 1.0) between iterations;
    with inotify and --pid=P, check process P at least once every N seconds
  type: string
  inputBinding:
    prefix: --sleep-interval
- id: verbose
  doc: always output headers giving file names
  type: boolean
  inputBinding:
    prefix: --verbose
- id: zero_terminated
  doc: line delimiter is NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero-terminated
outputs: []
cwlVersion: v1.1
baseCommand:
- tail
