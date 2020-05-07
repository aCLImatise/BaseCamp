class: CommandLineTool
id: omero_node.cwl
inputs:
- id: start
  doc: -- Start the node via icegridnode. With sync doesn't return until reachable.
  type: string
  inputBinding:
    position: 0
- id: stop
  doc: -- Stop the node via icegridadmin. With sync doesn't return until stopped.
  type: string
  inputBinding:
    position: 1
- id: status
  doc: -- Prints a status message. Return code is non-zero if there is a problem.
  type: string
  inputBinding:
    position: 2
- id: restart
  doc: -- Calls "sync start" then "stop" ("sync stop" if sync is specified)
  type: string
  inputBinding:
    position: 3
- id: foreground
  doc: Start in foreground mode (no daemon/service)
  type: boolean
  inputBinding:
    prefix: --foreground
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- node
