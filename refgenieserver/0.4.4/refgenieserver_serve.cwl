class: CommandLineTool
id: refgenieserver_serve.cwl
inputs:
- id: config
  doc: "A path to the refgenie config file (YAML). If not provided, the first available\
    \ environment variable among: 'REFGENIE' will be used if set. Currently: not set"
  type: string
  inputBinding:
    prefix: --config
- id: dbg
  doc: Set logger verbosity to debug
  type: boolean
  inputBinding:
    prefix: --dbg
- id: port
  doc: The port the webserver should be run on.
  type: string
  inputBinding:
    prefix: --port
outputs: []
cwlVersion: v1.1
baseCommand:
- refgenieserver
- serve
