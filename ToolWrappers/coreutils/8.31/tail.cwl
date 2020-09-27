class: CommandLineTool
id: tail.cwl
inputs:
- id: in_bytes
  doc: "=[+]NUM       output the last NUM bytes; or use -c +NUM to\noutput starting\
    \ with byte NUM of each file"
  type: boolean
  inputBinding:
    prefix: --bytes
- id: in_follow
  doc: "[={name|descriptor}]\noutput appended data as the file grows;\nan absent option\
    \ argument means 'descriptor'"
  type: File
  inputBinding:
    prefix: --follow
- id: in_same__followname
  doc: same as --follow=name --retry
  type: boolean
  inputBinding:
    prefix: -F
- id: in_lines
  doc: "=[+]NUM       output the last NUM lines, instead of the last 10;\nor use -n\
    \ +NUM to output starting with line NUM"
  type: boolean
  inputBinding:
    prefix: --lines
- id: in_max_unchanged_stats
  doc: "with --follow=name, reopen a FILE which has not\nchanged size after N (default\
    \ 5) iterations\nto see if it has been unlinked or renamed\n(this is the usual\
    \ case of rotated log files);\nwith inotify, this option is rarely useful"
  type: long
  inputBinding:
    prefix: --max-unchanged-stats
- id: in_pid
  doc: with -f, terminate after process ID, PID dies
  type: string
  inputBinding:
    prefix: --pid
- id: in_silent
  doc: never output headers giving file names
  type: File
  inputBinding:
    prefix: --silent
- id: in_retry
  doc: keep trying to open a file if it is inaccessible
  type: boolean
  inputBinding:
    prefix: --retry
- id: in_sleep_interval
  doc: "with -f, sleep for approximately N seconds\n(default 1.0) between iterations;\n\
    with inotify and --pid=P, check process P at\nleast once every N seconds"
  type: double
  inputBinding:
    prefix: --sleep-interval
- id: in_verbose
  doc: always output headers giving file names
  type: File
  inputBinding:
    prefix: --verbose
- id: in_zero_terminated
  doc: line delimiter is NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero-terminated
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_follow
  doc: "[={name|descriptor}]\noutput appended data as the file grows;\nan absent option\
    \ argument means 'descriptor'"
  type: File
  outputBinding:
    glob: $(inputs.in_follow)
- id: out_silent
  doc: never output headers giving file names
  type: File
  outputBinding:
    glob: $(inputs.in_silent)
- id: out_verbose
  doc: always output headers giving file names
  type: File
  outputBinding:
    glob: $(inputs.in_verbose)
cwlVersion: v1.1
baseCommand:
- tail
