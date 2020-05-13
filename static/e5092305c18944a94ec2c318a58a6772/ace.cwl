class: CommandLineTool
id: ace.pl.cwl
inputs:
- id: host
  doc: Server host (localhost)
  type: string
  inputBinding:
    prefix: -host
- id: port
  doc: Server port (200005)
  type: string
  inputBinding:
    prefix: -port
- id: path
  doc: Local database path (no default)
  type: string
  inputBinding:
    prefix: -path
- id: url
  doc: <url>       Server URL (see below
  type: boolean
  inputBinding:
    prefix: -url
- id: login
  doc: Username
  type: string
  inputBinding:
    prefix: -login
- id: pass
  doc: Password
  type: string
  inputBinding:
    prefix: -pass
- id: tcsh
  doc: Use T-shell completion mode
  type: boolean
  inputBinding:
    prefix: -tcsh
- id: save
  doc: Save database updates automatically
  type: boolean
  inputBinding:
    prefix: -save
- id: exec
  doc: Run a command and quit
  type: string
  inputBinding:
    prefix: -exec
outputs: []
cwlVersion: v1.1
baseCommand:
- ace.pl
