class: CommandLineTool
id: body.pl.cwl
inputs:
- id: in_include_blank_lines
  doc: ': Do *not* include blank lines when counting (default counts them).'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_skip
  doc: '<n1,n2...>: Exclude line numbers n1,n2...'
  type: boolean
  inputBinding:
    prefix: -skip
- id: in_select
  doc: '<n1,n2>:  Select line numbers n1,n2...'
  type: boolean
  inputBinding:
    prefix: -select
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- body.pl
