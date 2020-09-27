class: CommandLineTool
id: dnal.cwl
inputs:
- id: in_match
  doc: '[4]  Match score'
  type: boolean
  inputBinding:
    prefix: -match
- id: in_mis
  doc: '[-1] MisMatch score'
  type: boolean
  inputBinding:
    prefix: -mis
- id: in_gap
  doc: '[5]  Gap penalty'
  type: boolean
  inputBinding:
    prefix: -gap
- id: in_ext
  doc: '[1]  Gap extension penalty'
  type: boolean
  inputBinding:
    prefix: -ext
- id: in_bound
  doc: '[local/global/edge]  Start/End policy'
  type: boolean
  inputBinding:
    prefix: -bound
- id: in_kbyte
  doc: '[100000] Number of kbytes allowed in main memory'
  type: boolean
  inputBinding:
    prefix: -kbyte
- id: in_dy_mem
  doc: memory style [default/linear/explicit]
  type: boolean
  inputBinding:
    prefix: -dymem
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dnal
