class: CommandLineTool
id: wg_blimp_run_shiny.cwl
inputs:
- id: in_host
  doc: Host ip for shiny to listen on.
  type: string?
  inputBinding:
    prefix: --host
- id: in_port
  doc: Shiny port number.
  type: long?
  inputBinding:
    prefix: --port
- id: in_config_files_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- wg-blimp
- run-shiny
