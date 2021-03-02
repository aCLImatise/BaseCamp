class: CommandLineTool
id: rsat_oligo_diff.cwl
inputs:
- id: in_oligo_diff
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
  doc: "\e[1mUSAGE\e[0m"
  type: string
  inputBinding:
    position: 1
- id: in_format_dot
  doc: "\e[1m-ctrl control_seq_file\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_occurrences_dot
  doc: "\e[1m-l oligo_length\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_respectively_dot
  doc: "\e[1m-return maps\e[0m"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rsat
- oligo-diff
