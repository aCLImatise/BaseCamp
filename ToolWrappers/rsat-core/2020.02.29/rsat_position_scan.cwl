class: CommandLineTool
id: rsat_position_scan.cwl
inputs:
- id: in_position_scan
  doc: "\e[1mVERSION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_j_dotado_tc_dot_mondragon_atncmmdotuiodotno
  doc: "\e[1mCATEGORY\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_util
  doc: "\e[1mUSAGE\e[0m"
  type: string
  inputBinding:
    position: 1
- id: in_specified_dot
  doc: 'Default: 1e-3'
  type: string
  inputBinding:
    position: 0
- id: in_done_dot
  doc: "\e[1m-diff\e[0m"
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
- position-scan
