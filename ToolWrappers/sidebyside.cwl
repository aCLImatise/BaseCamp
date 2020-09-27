class: CommandLineTool
id: sidebyside.cwl
inputs:
- id: in_width
  doc: ': line width for each file (default: 50)'
  type: File
  inputBinding:
    prefix: -width
- id: in_same
  doc: ': marker for lines that are the same (default: ==)'
  type: string
  inputBinding:
    prefix: -same
- id: in_dif
  doc: ': marker for lines that are different (default: !!)'
  type: string
  inputBinding:
    prefix: -dif
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sidebyside
