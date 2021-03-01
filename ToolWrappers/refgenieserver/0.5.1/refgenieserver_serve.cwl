class: CommandLineTool
id: refgenieserver_serve.cwl
inputs:
- id: in_config
  doc: "A path to the refgenie config file (YAML). If not\nprovided, the first available\
    \ environment variable\namong: 'REFGENIE' will be used if set. Currently: not\n\
    set"
  type: File?
  inputBinding:
    prefix: --config
- id: in_dbg
  doc: Set logger verbosity to debug
  type: boolean?
  inputBinding:
    prefix: --dbg
- id: in_port
  doc: The port the webserver should be run on.
  type: string?
  inputBinding:
    prefix: --port
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- refgenieserver
- serve
