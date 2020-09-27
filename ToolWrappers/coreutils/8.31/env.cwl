class: CommandLineTool
id: env.cwl
inputs:
- id: in_ignore_environment
  doc: start with an empty environment
  type: boolean
  inputBinding:
    prefix: --ignore-environment
- id: in_null
  doc: end each output line with NUL, not newline
  type: boolean
  inputBinding:
    prefix: --null
- id: in_unset
  doc: remove variable from the environment
  type: string
  inputBinding:
    prefix: --unset
- id: in_chdir
  doc: change working directory to DIR
  type: Directory
  inputBinding:
    prefix: --chdir
- id: in_split_string
  doc: "process and split S into separate arguments;\nused to pass multiple arguments\
    \ on shebang lines"
  type: string
  inputBinding:
    prefix: --split-string
- id: in_block_signal
  doc: '[=SIG]    block delivery of SIG signal(s) to COMMAND'
  type: boolean
  inputBinding:
    prefix: --block-signal
- id: in_default_signal
  doc: '[=SIG]  reset handling of SIG signal(s) to the default'
  type: boolean
  inputBinding:
    prefix: --default-signal
- id: in_ignore_signal
  doc: '[=SIG]   set handling of SIG signals(s) to do nothing'
  type: boolean
  inputBinding:
    prefix: --ignore-signal
- id: in_list_signal_handling
  doc: list non default signal handling to stderr
  type: boolean
  inputBinding:
    prefix: --list-signal-handling
- id: in_debug
  doc: print verbose information for each processing step
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- env
