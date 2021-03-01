class: CommandLineTool
id: stacks_summary.py.cwl
inputs:
- id: in_res_dir
  doc: '[--logfile LOGFILE]'
  type: string?
  inputBinding:
    prefix: --res-dir
- id: in_stacks_prog
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --stacks-prog
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- stacks_summary.py
