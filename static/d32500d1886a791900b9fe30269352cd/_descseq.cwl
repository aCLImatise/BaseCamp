class: CommandLineTool
id: _descseq.cwl
inputs:
- id: in_name
  doc: string     Name of the sequence (Any string)
  type: boolean?
  inputBinding:
    prefix: -name
- id: in_description
  doc: string     Description of the sequence (Any string)
  type: boolean?
  inputBinding:
    prefix: -description
- id: in_append
  doc: "boolean    [N] This allows you to append the name or\ndescription you have\
    \ given on to the end of\nthe existing name or description of the\nsequence."
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
- _descseq
