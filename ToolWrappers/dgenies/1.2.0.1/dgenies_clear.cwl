class: CommandLineTool
id: dgenies_clear.cwl
inputs:
- id: in_clear_logs
  doc: "[LOGS], --logs [LOGS]\nClear logs"
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_max_age
  doc: Max age for job to delete (0 for all)
  type: long?
  inputBinding:
    prefix: --max-age
- id: in_add_option_use
  doc: "[WEB], --web [WEB]\nAdd this option with -j option, if you use the\nwebserver\
    \ mode\n"
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_j
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_c
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_cron_s
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_logs
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_jobs
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dgenies
- clear
