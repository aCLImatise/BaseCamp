class: CommandLineTool
id: cytoscape.sh.cwl
inputs:
- id: session
  doc: Load a cytoscape session (.cys) file.
  type: File
  inputBinding:
    prefix: --session
- id: network
  doc: Load a network file (any format).
  type: File
  inputBinding:
    prefix: --network
- id: props
  doc: 'Load cytoscape properties file (Java properties format) or individual property:
    -P name=value.'
  type: File
  inputBinding:
    prefix: --props
- id: viz_map
  doc: Load vizmap properties file (Cytoscape VizMap format).
  type: File
  inputBinding:
    prefix: --vizmap
- id: script
  doc: Execute commands from script file.
  type: File
  inputBinding:
    prefix: --script
- id: rest
  doc: Start a rest service.
  type: string
  inputBinding:
    prefix: --rest
outputs: []
cwlVersion: v1.1
baseCommand:
- cytoscape.sh
