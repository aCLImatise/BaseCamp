class: CommandLineTool
id: esl_alimap_msafile2.cwl
inputs:
- id: in_esl_ali_map
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_msa_file_one
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_msa_file_two
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- esl-alimap
- msafile2
