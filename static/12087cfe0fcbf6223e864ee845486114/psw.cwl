class: CommandLineTool
id: psw.cwl
inputs:
- id: in_penatly_default
  doc: penatly (default 2)
  type: long
  inputBinding:
    prefix: -e
- id: in_matrix_default_blosumbla
  doc: matrix (default BLOSUM62.bla)
  type: long
  inputBinding:
    prefix: -m
- id: in_abc
  doc: the abc model
  type: string
  inputBinding:
    prefix: -abc
- id: in_penalty_above_default
  doc: a penalty for above (default 120)
  type: boolean
  inputBinding:
    prefix: -a
- id: in_b_penalty_above
  doc: b penalty for above (default 10)
  type: boolean
  inputBinding:
    prefix: -b
- id: in_c_penalty_above
  doc: c penalty for above (default 3)
  type: boolean
  inputBinding:
    prefix: -c
- id: in_raw_output
  doc: raw output
  type: string
  inputBinding:
    prefix: -r
- id: in_label_output
  doc: label output
  type: string
  inputBinding:
    prefix: -l
- id: in_fancy_output
  doc: fancy output
  type: string
  inputBinding:
    prefix: -f
- id: in_psw_use_sequences
  doc: psw to use sequences that seem to be DNA
  type: string
  inputBinding:
    prefix: -F
- id: in_dp_env
  doc: "envelope file...\n(default, -f, all outputs can be shown together)"
  type: File
  inputBinding:
    prefix: -dpenv
- id: in_dy_mem
  doc: memory style [default/linear/explicit]
  type: boolean
  inputBinding:
    prefix: -dymem
- id: in_kbyte
  doc: memory amount to use [4000]
  type: boolean
  inputBinding:
    prefix: -kbyte
- id: in_dy_debug
  doc: drop into dynamite dp matrix debugger
  type: boolean
  inputBinding:
    prefix: -dydebug
- id: in_pal_debug
  doc: print PackAln after debugger run if used
  type: boolean
  inputBinding:
    prefix: -paldebug
- id: in_version
  doc: show version and compile info
  type: boolean
  inputBinding:
    prefix: -version
- id: in_silent
  doc: No messages    on stderr
  type: boolean
  inputBinding:
    prefix: -silent
- id: in_quiet
  doc: No report/info on stderr
  type: boolean
  inputBinding:
    prefix: -quiet
- id: in_error_off_std
  doc: warning messages to stderr
  type: string
  inputBinding:
    prefix: -erroroffstd
- id: in_error_log
  doc: '[file] Log warning messages to file'
  type: boolean
  inputBinding:
    prefix: -errorlog
- id: in_error_style
  doc: '[server/program] style of error reporting (default program)'
  type: boolean
  inputBinding:
    prefix: -errorstyle
- id: in_options
  doc: -g gap penalty (default 12)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- psw
