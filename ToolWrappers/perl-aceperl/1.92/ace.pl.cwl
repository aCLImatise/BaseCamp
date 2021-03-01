class: CommandLineTool
id: ace.pl.cwl
inputs:
- id: in_host
  doc: Server host (localhost)
  type: string?
  inputBinding:
    prefix: -host
- id: in_port
  doc: Server port (200005)
  type: long?
  inputBinding:
    prefix: -port
- id: in_path
  doc: Local database path (no default)
  type: File?
  inputBinding:
    prefix: -path
- id: in_url
  doc: <url>       Server URL (see below
  type: boolean?
  inputBinding:
    prefix: -url
- id: in_login
  doc: Username
  type: string?
  inputBinding:
    prefix: -login
- id: in_pass
  doc: Password
  type: string?
  inputBinding:
    prefix: -pass
- id: in_tcsh
  doc: Use T-shell completion mode
  type: boolean?
  inputBinding:
    prefix: -tcsh
- id: in_save
  doc: Save database updates automatically
  type: boolean?
  inputBinding:
    prefix: -save
- id: in_exec
  doc: Run a command and quit
  type: string?
  inputBinding:
    prefix: -exec
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ace.pl
