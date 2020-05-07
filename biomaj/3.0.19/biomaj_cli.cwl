class: CommandLineTool
id: biomaj_cli.py.cwl
inputs:
- id: bank
  doc: ': name of the bank to update'
  type: string
  inputBinding:
    prefix: --bank
- id: release
  doc: ': release of the bank to remove'
  type: string
  inputBinding:
    prefix: --release
- id: search
  doc: ': basic search in bank production releases, return list of banks'
  type: boolean
  inputBinding:
    prefix: --search
- id: formats
  doc: ',yy : list of comma separated format'
  type: string
  inputBinding:
    prefix: --formats
- id: types
  doc: ',yy : list of comma separated type'
  type: string
  inputBinding:
    prefix: --types
- id: query
  doc: '"LUCENE query syntax": search in index (if activated)'
  type: boolean
  inputBinding:
    prefix: --query
- id: show
  doc: ': Show bank files per format'
  type: boolean
  inputBinding:
    prefix: --show
- id: release
  doc: ': release of the bank to show'
  type: string
  inputBinding:
    prefix: --release
- id: maintenance
  doc: '/off/status: (un)set biomaj in maintenance mode to prevent updates/removal'
  type: string
  inputBinding:
    prefix: --maintenance
outputs: []
cwlVersion: v1.1
baseCommand:
- biomaj-cli.py
