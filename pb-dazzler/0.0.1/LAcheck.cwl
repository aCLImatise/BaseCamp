class: CommandLineTool
id: LAcheck.cwl
inputs:
- id: v
  doc: ': Verbose mode, output error messages.'
  type: boolean
  inputBinding:
    prefix: -v
- id: s
  doc: ': Check that .las is in sorted order.'
  type: boolean
  inputBinding:
    prefix: -S
- id: a
  doc: ': If -S, then check sorted by A-read, A-position pairs off => check sorted
    by A,B-read pairs (LA-piles)'
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- LAcheck
