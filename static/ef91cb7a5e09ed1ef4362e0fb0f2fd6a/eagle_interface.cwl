class: CommandLineTool
id: eagle_interface.cwl
inputs:
- id: port
  doc: 'port (default: 8000)'
  type: string
  inputBinding:
    prefix: --port
- id: public
  doc: listen for external connections
  type: boolean
  inputBinding:
    prefix: --public
- id: no_debug
  doc: disable debug messages
  type: boolean
  inputBinding:
    prefix: --nodebug
- id: config
  doc: config file to use.
  type: string
  inputBinding:
    prefix: --config
- id: processes
  doc: use up to M parallel processes to serve HTTP requests (default=1).
  type: string
  inputBinding:
    prefix: --processes
outputs: []
cwlVersion: v1.1
baseCommand:
- eagle
- interface
