class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/webSync.cwl
inputs:
- id: debug
  doc: show debug messages
  type: boolean
  inputBinding:
    prefix: --debug
- id: connections
  doc: Maximum number of parallel connections to the server, default 10
  type: string
  inputBinding:
    prefix: --connections
- id: skip_scan
  doc: Do not scan local file sizes again, in case you know it is up to date
  type: boolean
  inputBinding:
    prefix: --skipScan
- id: url
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- webSync
