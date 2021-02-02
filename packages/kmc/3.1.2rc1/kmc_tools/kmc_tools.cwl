class: CommandLineTool
id: ../../../kmc_tools.cwl
inputs:
- id: in_value_total_number
  doc: '<value>            - total number of threads (default: no. of CPU cores)'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_enable_verbose_mode
  doc: '- enable verbose mode (shows some information) (default: false)'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_hp
  doc: '- hide percentage progress (default: false)'
  type: boolean
  inputBinding:
    prefix: -hp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kmc_tools
