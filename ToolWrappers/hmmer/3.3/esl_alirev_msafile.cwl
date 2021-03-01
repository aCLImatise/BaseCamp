class: CommandLineTool
id: esl_alirev_msafile.cwl
inputs:
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- esl-alirev
- msafile
