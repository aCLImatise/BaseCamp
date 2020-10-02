class: CommandLineTool
id: rsat_permute_matrix.cwl
inputs:
- id: in_permute_matrix
  doc: "\e[1mVERSION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_jacques_do_tv_and_otheldenatulbdotacdotbe
  doc: "\e[1mCATEGORY\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_util
  doc: matrix
  type: string
  inputBinding:
    position: 1
- id: in_convert_matrix
  doc: "\e[1mOPTIONS\e[0m"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsat
- permute-matrix
