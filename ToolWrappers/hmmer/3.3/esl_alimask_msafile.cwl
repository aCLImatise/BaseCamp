class: CommandLineTool
id: ../../../esl_alimask_msafile.cwl
inputs:
- id: in_rf_is_mask
  doc: ''
  type: File
  inputBinding:
    prefix: --rf-is-mask
- id: in_p
  doc: ''
  type: File
  inputBinding:
    prefix: -p
- id: in_g
  doc: ''
  type: File
  inputBinding:
    prefix: -g
- id: in_t
  doc: ''
  type: File
  inputBinding:
    prefix: -t
- id: in_esl_ali_mask
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_mask_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_coords
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
- esl-alimask
- msafile
