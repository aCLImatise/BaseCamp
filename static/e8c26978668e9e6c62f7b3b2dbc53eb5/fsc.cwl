class: CommandLineTool
id: fsc.cwl
inputs:
- id: source_files
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ipv4
  doc: Use IPv4 rather than IPv6 for the server socket
  type: boolean
  inputBinding:
    prefix: -ipv4
- id: max_idle
  doc: Set idle timeout in minutes for fsc (use 0 for no timeout)
  type: string
  inputBinding:
    prefix: -max-idle
- id: port
  doc: Search and start compile server in given port only
  type: string
  inputBinding:
    prefix: -port
- id: reset
  doc: Reset compile server caches
  type: boolean
  inputBinding:
    prefix: -reset
- id: server
  doc: <hostname:portnumber>  Specify compile server socket
  type: boolean
  inputBinding:
    prefix: -server
- id: shutdown
  doc: Shutdown compile server
  type: boolean
  inputBinding:
    prefix: -shutdown
outputs: []
cwlVersion: v1.1
baseCommand:
- fsc
