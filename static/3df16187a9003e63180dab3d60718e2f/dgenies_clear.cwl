class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dgenies_clear.cwl
inputs:
- id: _clear_crons
  doc: '[CRONS], --crons [CRONS] Clear crons'
  type: boolean
  inputBinding:
    prefix: -c
- id: _clear_logs
  doc: '[LOGS], --logs [LOGS] Clear logs'
  type: boolean
  inputBinding:
    prefix: -l
- id: _clear_jobs
  doc: '[JOBS], --jobs [JOBS] Clear jobs'
  type: boolean
  inputBinding:
    prefix: -j
- id: max_age
  doc: Max age for job to delete (0 for all)
  type: long
  inputBinding:
    prefix: --max-age
- id: add_option_use
  doc: '[WEB], --web [WEB] Add this option with -j option, if you use the webserver
    mode'
  type: boolean
  inputBinding:
    prefix: -w
- id: cron_s
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: logs
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: jobs
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- dgenies
- clear
