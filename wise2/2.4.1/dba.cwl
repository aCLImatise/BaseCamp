class: CommandLineTool
id: dba.cwl
inputs:
- id: match_a
  doc: '[0.65]     match level A'
  type: boolean
  inputBinding:
    prefix: -matchA
- id: match_b
  doc: '[0.75]     match level B'
  type: boolean
  inputBinding:
    prefix: -matchB
- id: match_c
  doc: '[0.85]     match level C'
  type: boolean
  inputBinding:
    prefix: -matchC
- id: match_d
  doc: '[0.95]     match level D'
  type: boolean
  inputBinding:
    prefix: -matchD
- id: gap_a
  doc: '[0.1]     (big only) Gap probability for A'
  type: boolean
  inputBinding:
    prefix: -gapA
- id: gap_aa
  doc: '[0.1]     (big only) Gap probability for AA'
  type: boolean
  inputBinding:
    prefix: -gapAA
- id: gap
  doc: '[0.05]       gap probability'
  type: boolean
  inputBinding:
    prefix: -gap
- id: block_open
  doc: '[0.01] block open probability'
  type: boolean
  inputBinding:
    prefix: -blockopen
- id: u_match
  doc: '[0.99]    unmatched gap probability'
  type: boolean
  inputBinding:
    prefix: -umatch
- id: single
  doc: use only one match level, set with -matchA [0.8]
  type: boolean
  inputBinding:
    prefix: -single
- id: no_match_n
  doc: do not match N to any base
  type: boolean
  inputBinding:
    prefix: -nomatchn
- id: align
  doc: show alignment for computer parsing
  type: boolean
  inputBinding:
    prefix: -align
- id: anchor
  doc: show anchored alignment to first sequence
  type: boolean
  inputBinding:
    prefix: -anchor
- id: pretty
  doc: show alignment for ASCII viewing
  type: boolean
  inputBinding:
    prefix: -pretty
- id: pff
  doc: show phylogenetic footprinting format output (gapped fasta)
  type: boolean
  inputBinding:
    prefix: -pff
- id: label
  doc: show label alignment
  type: boolean
  inputBinding:
    prefix: -label
- id: slim
  doc: use slim DBA alignment
  type: boolean
  inputBinding:
    prefix: -slim
- id: big
  doc: use big DBA alignment with AA block
  type: boolean
  inputBinding:
    prefix: -big
- id: params
  doc: print parameters
  type: boolean
  inputBinding:
    prefix: -params
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
- dba
