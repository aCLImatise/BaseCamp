class: CommandLineTool
id: ../../../esl_alimap_msafile2.cwl
inputs:
- id: esl_ali_map
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: msa_file_one
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: msa_file_two
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-alimap
- msafile2
