class: CommandLineTool
id: ssu_esl_sfetch_name.cwl
inputs:
- id: in_index
  doc: ''
  type: File
  inputBinding:
    prefix: --index
- id: in_f
  doc: ''
  type: File
  inputBinding:
    prefix: -f
- id: in_ssu_esl_s_fetch
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_name_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_sq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ssu-esl-sfetch
- name
