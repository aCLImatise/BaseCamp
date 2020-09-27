class: CommandLineTool
id: esl_shuffle_msafile.cwl
inputs:
- id: in_g
  doc: ''
  type: boolean
  inputBinding:
    prefix: -G
- id: in_a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -A
- id: in_esl_shuffle
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- esl-shuffle
- msafile
