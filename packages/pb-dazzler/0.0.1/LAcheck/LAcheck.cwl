class: CommandLineTool
id: LAcheck.cwl
inputs:
- id: in_verbose_mode_output
  doc: ': Verbose mode, output error messages.'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_check_sorted_order
  doc: ': Check that .las is in sorted order.'
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_s_then_check
  doc: ": If -S, then check sorted by A-read, A-position pairs\noff => check sorted\
    \ by A,B-read pairs (LA-piles)\n"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_vas
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -vaS
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- LAcheck
