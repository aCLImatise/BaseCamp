class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/LAcheck.cwl
inputs:
- id: verbose_mode_output
  doc: ': Verbose mode, output error messages.'
  type: boolean
  inputBinding:
    prefix: -v
- id: check_sorted_order
  doc: ': Check that .las is in sorted order.'
  type: boolean
  inputBinding:
    prefix: -S
- id: s_then_check
  doc: ': If -S, then check sorted by A-read, A-position pairs off => check sorted
    by A,B-read pairs (LA-piles)'
  type: boolean
  inputBinding:
    prefix: -a
- id: vas
  doc: ''
  type: boolean
  inputBinding:
    prefix: -vaS
outputs: []
cwlVersion: v1.1
baseCommand:
- LAcheck
