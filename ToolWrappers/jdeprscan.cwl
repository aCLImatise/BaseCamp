class: CommandLineTool
id: jdeprscan.cwl
inputs:
- id: in_class_path
  doc: "--for-removal\n--full-version"
  type: File
  inputBinding:
    prefix: --class-path
- id: in__listrelease
  doc: "--list\n--release 6|7|8|9|10|11"
  type: boolean
  inputBinding:
    prefix: -l
- id: in__verboseversion
  doc: "--verbose\n--version"
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
