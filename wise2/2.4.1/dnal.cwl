class: CommandLineTool
id: dnal.cwl
inputs:
- id: dy_debug
  doc: drop into dynamite dp matrix debugger
  type: boolean
  inputBinding:
    prefix: -dydebug
- id: pal_debug
  doc: print PackAln after debugger run if used
  type: boolean
  inputBinding:
    prefix: -paldebug
- id: version
  doc: show version and compile info
  type: boolean
  inputBinding:
    prefix: -version
- id: silent
  doc: No messages    on stderr
  type: boolean
  inputBinding:
    prefix: -silent
- id: quiet
  doc: No report/info on stderr
  type: boolean
  inputBinding:
    prefix: -quiet
- id: error_off_std
  doc: warning messages to stderr
  type: string
  inputBinding:
    prefix: -erroroffstd
- id: error_log
  doc: '[file] Log warning messages to file'
  type: boolean
  inputBinding:
    prefix: -errorlog
- id: error_style
  doc: '[server/program] style of error reporting (default program)'
  type: boolean
  inputBinding:
    prefix: -errorstyle
outputs: []
cwlVersion: v1.1
baseCommand:
- dnal
