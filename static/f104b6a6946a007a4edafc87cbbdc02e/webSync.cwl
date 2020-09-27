class: CommandLineTool
id: webSync.cwl
inputs:
- id: in_debug
  doc: show debug messages
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_connections
  doc: "Maximum number of parallel connections to the server,\ndefault 10"
  type: long
  inputBinding:
    prefix: --connections
- id: in_skip_scan
  doc: "Do not scan local file sizes again, in case you know\nit is up to date\n"
  type: boolean
  inputBinding:
    prefix: --skipScan
- id: in_url
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- webSync
