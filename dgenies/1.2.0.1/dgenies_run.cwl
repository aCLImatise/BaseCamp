class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dgenies_run.cwl
inputs:
- id: mode
  doc: Mode into run the application
  type: string
  inputBinding:
    prefix: --mode
- id: run_debug_mode
  doc: '[DEBUG], --debug [DEBUG] Run in debug mode'
  type: boolean
  inputBinding:
    prefix: -d
- id: host
  doc: Host into run the application
  type: string
  inputBinding:
    prefix: --host
- id: port
  doc: Port into run the application
  type: string
  inputBinding:
    prefix: --port
- id: no_cron_s
  doc: '[NO_CRONS] Do not run crons (for debug only, ignored for standalone mode)'
  type: boolean
  inputBinding:
    prefix: --no-crons
- id: no_browser
  doc: '[NO_BROWSER] Do not start the browser (Start of browser is always disabled
    in debug mode)'
  type: boolean
  inputBinding:
    prefix: --no-browser
- id: debug
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dgenies
- run
