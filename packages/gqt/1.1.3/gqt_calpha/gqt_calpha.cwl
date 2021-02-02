class: CommandLineTool
id: gqt_calpha.cwl
inputs:
- id: in_direcory_name_remote
  doc: direcory name for remote files (default ./)
  type: string
  inputBinding:
    prefix: -t
- id: in_f
  doc: (requried for pca-shared)\
  type: string
  inputBinding:
    prefix: -f
- id: in_l
  doc: (requried for pca-shared)\
  type: File
  inputBinding:
    prefix: -l
- id: in_i
  doc: ''
  type: File
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_l
  doc: (requried for pca-shared)\
  type: File
  outputBinding:
    glob: $(inputs.in_l)
cwlVersion: v1.1
baseCommand:
- gqt
- calpha
