class: CommandLineTool
id: ../../../jdeprscan.cwl
inputs:
- id: in_class_path
  doc: ''
  type: File
  inputBinding:
    prefix: --class-path
- id: in_for_removal
  doc: ''
  type: boolean
  inputBinding:
    prefix: --for-removal
- id: in_full_version
  doc: ''
  type: boolean
  inputBinding:
    prefix: --full-version
- id: in__list
  doc: --list
  type: boolean
  inputBinding:
    prefix: -l
- id: in_release
  doc: '|7|8|9|10|11'
  type: long
  inputBinding:
    prefix: --release
- id: in__verbose
  doc: --verbose
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- jdeprscan
