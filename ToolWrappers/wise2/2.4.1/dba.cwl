class: CommandLineTool
id: dba.cwl
inputs:
- id: in_match_a
  doc: '[0.65]     match level A'
  type: boolean?
  inputBinding:
    prefix: -matchA
- id: in_match_b
  doc: '[0.75]     match level B'
  type: boolean?
  inputBinding:
    prefix: -matchB
- id: in_match_c
  doc: '[0.85]     match level C'
  type: boolean?
  inputBinding:
    prefix: -matchC
- id: in_match_d
  doc: '[0.95]     match level D'
  type: boolean?
  inputBinding:
    prefix: -matchD
- id: in_gap_a
  doc: '[0.1]     (big only) Gap probability for A'
  type: boolean?
  inputBinding:
    prefix: -gapA
- id: in_gap_aa
  doc: '[0.1]     (big only) Gap probability for AA'
  type: boolean?
  inputBinding:
    prefix: -gapAA
- id: in_gap
  doc: '[0.05]       gap probability'
  type: boolean?
  inputBinding:
    prefix: -gap
- id: in_block_open
  doc: '[0.01] block open probability'
  type: boolean?
  inputBinding:
    prefix: -blockopen
- id: in_u_match
  doc: '[0.99]    unmatched gap probability'
  type: boolean?
  inputBinding:
    prefix: -umatch
- id: in_single
  doc: use only one match level, set with -matchA [0.8]
  type: boolean?
  inputBinding:
    prefix: -single
- id: in_no_match_n
  doc: do not match N to any base
  type: boolean?
  inputBinding:
    prefix: -nomatchn
- id: in_align
  doc: show alignment for computer parsing
  type: boolean?
  inputBinding:
    prefix: -align
- id: in_anchor
  doc: show anchored alignment to first sequence
  type: boolean?
  inputBinding:
    prefix: -anchor
- id: in_pretty
  doc: show alignment for ASCII viewing
  type: boolean?
  inputBinding:
    prefix: -pretty
- id: in_pff
  doc: "show phylogenetic footprinting format output\n(gapped fasta)"
  type: boolean?
  inputBinding:
    prefix: -pff
- id: in_label
  doc: show label alignment
  type: boolean?
  inputBinding:
    prefix: -label
- id: in_slim
  doc: use slim DBA alignment
  type: boolean?
  inputBinding:
    prefix: -slim
- id: in_big
  doc: use big DBA alignment with AA block
  type: boolean?
  inputBinding:
    prefix: -big
- id: in_params
  doc: print parameters
  type: boolean?
  inputBinding:
    prefix: -params
- id: in_dy_mem
  doc: memory style [default/linear/explicit]
  type: boolean?
  inputBinding:
    prefix: -dymem
- id: in_kbyte
  doc: memory amount to use [4000]
  type: boolean?
  inputBinding:
    prefix: -kbyte
- id: in_dy_debug
  doc: drop into dynamite dp matrix debugger
  type: boolean?
  inputBinding:
    prefix: -dydebug
- id: in_pal_debug
  doc: print PackAln after debugger run if used
  type: boolean?
  inputBinding:
    prefix: -paldebug
- id: in_version
  doc: show version and compile info
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_silent
  doc: No messages    on stderr
  type: boolean?
  inputBinding:
    prefix: -silent
- id: in_quiet
  doc: No report/info on stderr
  type: boolean?
  inputBinding:
    prefix: -quiet
- id: in_error_off_std
  doc: warning messages to stderr
  type: string?
  inputBinding:
    prefix: -erroroffstd
- id: in_error_log
  doc: '[file] Log warning messages to file'
  type: boolean?
  inputBinding:
    prefix: -errorlog
- id: in_error_style
  doc: '[server/program] style of error reporting (default program)'
  type: boolean?
  inputBinding:
    prefix: -errorstyle
- id: in_seq_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_seq_two
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dba
