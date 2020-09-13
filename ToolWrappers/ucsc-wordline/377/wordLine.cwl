class: CommandLineTool
id: ../../../wordLine.cwl
inputs:
- id: in_c_sym
  doc: '- Break up words based on C symbol rules rather than white space'
  type: boolean
  inputBinding:
    prefix: -csym
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- wordLine
