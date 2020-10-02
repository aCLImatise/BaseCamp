class: CommandLineTool
id: dgenies_run.cwl
inputs:
- id: in_mode
  doc: Mode into run the application
  type: string
  inputBinding:
    prefix: --mode
- id: in_run_debug_mode
  doc: "[DEBUG], --debug [DEBUG]\nRun in debug mode"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_host
  doc: Host into run the application
  type: string
  inputBinding:
    prefix: --host
- id: in_port
  doc: Port into run the application
  type: string
  inputBinding:
    prefix: --port
- id: in_no_cron_s
  doc: "[NO_CRONS]\nDo not run crons (for debug only, ignored for\nstandalone mode)"
  type: boolean
  inputBinding:
    prefix: --no-crons
- id: in_no_browser
  doc: "[NO_BROWSER]\nDo not start the browser (Start of browser is always\ndisabled\
    \ in debug mode)\n"
  type: boolean
  inputBinding:
    prefix: --no-browser
- id: in_debug
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dgenies
- run
