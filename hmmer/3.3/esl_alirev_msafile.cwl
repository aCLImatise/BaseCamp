class: CommandLineTool
id: esl_alirev_msafile.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-alirev
- msafile
