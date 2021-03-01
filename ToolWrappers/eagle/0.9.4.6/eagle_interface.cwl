class: CommandLineTool
id: eagle_interface.cwl
inputs:
- id: in_port
  doc: 'port (default: 8000)'
  type: long?
  inputBinding:
    prefix: --port
- id: in_public
  doc: listen for external connections
  type: boolean?
  inputBinding:
    prefix: --public
- id: in_no_debug
  doc: disable debug messages
  type: boolean?
  inputBinding:
    prefix: --nodebug
- id: in_config
  doc: config file to use.
  type: File?
  inputBinding:
    prefix: --config
- id: in_processes
  doc: "use up to M parallel processes to serve HTTP requests\n(default=1).\n"
  type: long?
  inputBinding:
    prefix: --processes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- eagle
- interface
