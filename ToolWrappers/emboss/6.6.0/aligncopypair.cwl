class: CommandLineTool
id: aligncopypair.cwl
inputs:
- id: in_name
  doc: string     Name of the alignment (Any string)
  type: boolean?
  inputBinding:
    prefix: -name
- id: in_comment
  doc: string     Comment on the alignment (Any string)
  type: boolean?
  inputBinding:
    prefix: -comment
- id: in_append
  doc: "boolean    [N] This allows you to append the name and\ncomments you have given\
    \ on to the end of the\nexisting alignment header."
  type: boolean?
  inputBinding:
    prefix: -append
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- aligncopypair
