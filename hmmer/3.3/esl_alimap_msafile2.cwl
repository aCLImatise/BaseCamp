class: CommandLineTool
id: esl_alimap_msafile2.cwl
inputs:
- id: msafile1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: msafile2
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-alimap
- msafile2
