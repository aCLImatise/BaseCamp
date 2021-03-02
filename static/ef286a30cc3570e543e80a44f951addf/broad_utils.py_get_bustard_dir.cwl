class: CommandLineTool
id: broad_utils.py_get_bustard_dir.cwl
inputs:
- id: in_loglevel
  doc: "Verboseness of output. [default: ERROR]\n"
  type: string?
  inputBinding:
    prefix: --loglevel
- id: in_broad_utils_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_subcommand
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_get_bustard_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- broad_utils.py
- get_bustard_dir
