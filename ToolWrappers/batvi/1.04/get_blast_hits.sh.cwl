class: CommandLineTool
id: get_blast_hits.sh.cwl
inputs:
- id: in_run_command_is
  doc: Don't run command if input is empty
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_input_separated_nul
  doc: Input is separated by NUL characters
  type: boolean?
  inputBinding:
    prefix: '-0'
- id: in_print_command_stderr
  doc: Print the command on stderr before execution
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_str_stops_processing
  doc: '[STR] STR stops input processing'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_pass_more_args
  doc: Pass no more than N args to PROG
  type: string?
  inputBinding:
    prefix: -n
- id: in_pass_command_line
  doc: Pass command line of no more than N bytes
  type: string?
  inputBinding:
    prefix: -s
- id: in_exit_size_exceeded
  doc: Exit if size is exceeded
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_xargs
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_prog
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- get_blast_hits.sh
