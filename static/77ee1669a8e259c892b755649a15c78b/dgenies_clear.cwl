class: CommandLineTool
id: dgenies_clear.cwl
inputs:
- id: c
  doc: '[CRONS], --crons [CRONS] Clear crons'
  type: boolean
  inputBinding:
    prefix: -c
- id: l
  doc: '[LOGS], --logs [LOGS] Clear logs'
  type: boolean
  inputBinding:
    prefix: -l
- id: j
  doc: '[JOBS], --jobs [JOBS] Clear jobs'
  type: boolean
  inputBinding:
    prefix: -j
- id: max_age
  doc: Max age for job to delete (0 for all)
  type: long
  inputBinding:
    prefix: --max-age
- id: w
  doc: '[WEB], --web [WEB] Add this option with -j option, if you use the webserver
    mode'
  type: boolean
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- dgenies
- clear
