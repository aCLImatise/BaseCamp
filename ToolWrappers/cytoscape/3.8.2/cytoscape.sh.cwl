class: CommandLineTool
id: cytoscape.sh.cwl
inputs:
- id: in_session
  doc: Load a cytoscape session (.cys) file.
  type: File?
  inputBinding:
    prefix: --session
- id: in_network
  doc: Load a network file (any format).
  type: File?
  inputBinding:
    prefix: --network
- id: in_props
  doc: "Load cytoscape properties file (Java properties\nformat) or individual property:\
    \ -P name=value."
  type: File?
  inputBinding:
    prefix: --props
- id: in_viz_map
  doc: "Load vizmap properties file (Cytoscape VizMap\nformat)."
  type: File?
  inputBinding:
    prefix: --vizmap
- id: in_script
  doc: Execute commands from script file.
  type: File?
  inputBinding:
    prefix: --script
- id: in_rest
  doc: Start a rest service.
  type: string?
  inputBinding:
    prefix: --rest
- id: in_cytoscape_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cytoscape:3.8.2--hadc2ddb_0
cwlVersion: v1.1
baseCommand:
- cytoscape.sh
