class: CommandLineTool
id: ../../../stacks_summary.py.cwl
inputs:
- id: in_res_dir
  doc: '[--logfile LOGFILE]'
  type: string
  inputBinding:
    prefix: --res-dir
- id: in_stacks_prog
  doc: ''
  type: string
  inputBinding:
    prefix: --stacks-prog
- id: in_log_file
  doc: ''
  type: File
  inputBinding:
    prefix: --logfile
- id: in_pop_map
  doc: ''
  type: string
  inputBinding:
    prefix: --pop-map
- id: in_summary
  doc: ''
  type: string
  inputBinding:
    prefix: --summary
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- stacks_summary.py
