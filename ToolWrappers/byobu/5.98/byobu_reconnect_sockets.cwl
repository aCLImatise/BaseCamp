class: CommandLineTool
id: byobu_reconnect_sockets.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- byobu-reconnect-sockets
