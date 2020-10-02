class: CommandLineTool
id: gem_server.cwl
inputs:
- id: in_port
  doc: port to listen on
  type: string
  inputBinding:
    prefix: --port
- id: in_dir
  doc: "directories from which to serve gems\nmultiple directories may be provided\n\
    --[no-]daemon                run as a daemon"
  type: string
  inputBinding:
    prefix: --dir
- id: in_bind
  doc: ',HOST             addresses to bind'
  type: string
  inputBinding:
    prefix: --bind
- id: in_launch
  doc: "[=COMMAND]           launches a browser window\nCOMMAND defaults to 'start'\
    \ on Windows\nand 'open' on all other platforms"
  type: boolean
  inputBinding:
    prefix: --launch
- id: in__verbose_set
  doc: ', --[no-]verbose               Set the verbose level of output'
  type: boolean
  inputBinding:
    prefix: -V
- id: in_quiet
  doc: Silence commands
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_config_file
  doc: Use this config file instead of default
  type: File
  inputBinding:
    prefix: --config-file
- id: in_backtrace
  doc: Show stack backtrace on errors
  type: boolean
  inputBinding:
    prefix: --backtrace
- id: in_debug
  doc: Turn on Ruby debugging
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_machines_dot
  doc: The cache files for installed gems must exist to use the server as a source
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gem
- server
