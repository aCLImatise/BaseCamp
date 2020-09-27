class: CommandLineTool
id: syrupy.py.cwl
inputs:
- id: in_quiet
  doc: do not report miscellaneous run information to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_replace
  doc: replace output file(s) without asking if already
  type: File
  inputBinding:
    prefix: --replace
- id: in__debugleveldebugging_information
  doc: "#, --debug-level=#\ndebugging information level (0, 1, 2, 3; default=0)"
  type: boolean
  inputBinding:
    prefix: -v
- id: in_explain
  doc: "show detailed information on the meaning of each of\nthe columns, and then\
    \ exit"
  type: boolean
  inputBinding:
    prefix: --explain
- id: in_poll_pid
  doc: "ignore COMMAND if given, and poll external process\nwith specified PID"
  type: string
  inputBinding:
    prefix: --poll-pid
- id: in_ssh
  doc: use SSH to remote view PS with syrupy
  type: string
  inputBinding:
    prefix: --ssh
- id: in_poll_top_memory
  doc: "ignore COMMAND if given and poll top MEM processes by\nmemory usage"
  type: string
  inputBinding:
    prefix: --poll-top-memory
- id: in_poll_command
  doc: "ignore COMMAND if given, and poll external process\nwith command matching\
    \ specified regular expression\npattern"
  type: string
  inputBinding:
    prefix: --poll-command
- id: in__intervalpolling_interval
  doc: "#.##, --interval=#.##\npolling interval in seconds (default=1)"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_syrupy_in_front
  doc: "redirect Syrupy output and miscellaneous information\nto standard output and\
    \ standard error instead of\nlogging to files"
  type: boolean
  inputBinding:
    prefix: --syrupy-in-front
- id: in_command_in_front
  doc: "run COMMAND in foreground: send output and error\nstream of COMMAND to standard\
    \ output and standard\nerror, respectively"
  type: boolean
  inputBinding:
    prefix: --command-in-front
- id: in_no_command_output
  doc: suppress all output from COMMAND
  type: boolean
  inputBinding:
    prefix: --no-command-output
- id: in_flush_output
  doc: force flushing of stream buffers after every write
  type: boolean
  inputBinding:
    prefix: --flush-output
- id: in_no_raw_process_log
  doc: suppress writing of raw results from process sampling
  type: boolean
  inputBinding:
    prefix: --no-raw-process-log
- id: in_show_command
  doc: show command column in output
  type: boolean
  inputBinding:
    prefix: --show-command
- id: in_separator
  doc: character(s) to used to separate columns in results
  type: string
  inputBinding:
    prefix: --separator
- id: in_no_align
  doc: do not align/justify columns
  type: boolean
  inputBinding:
    prefix: --no-align
- id: in_no_headers
  doc: do not output column headers
  type: boolean
  inputBinding:
    prefix: --no-headers
- id: in_exists
  doc: -t PROCESS-TITLE, --title=PROCESS-TITLE
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_replace
  doc: replace output file(s) without asking if already
  type: File
  outputBinding:
    glob: $(inputs.in_replace)
cwlVersion: v1.1
baseCommand:
- syrupy.py
