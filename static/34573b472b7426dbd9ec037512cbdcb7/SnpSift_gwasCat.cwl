class: CommandLineTool
id: SnpSift_gwasCat.cwl
inputs:
- id: c
  doc: ', -config <file>  : Specify config file'
  type: boolean
  inputBinding:
    prefix: -c
- id: d
  doc: ': Debug.'
  type: boolean
  inputBinding:
    prefix: -d
- id: db
  doc: ': Database file name (for commands that require databases).'
  type: File
  inputBinding:
    prefix: -db
- id: download
  doc: ': Download database, if not available locally. Default: true.'
  type: boolean
  inputBinding:
    prefix: -download
- id: g
  doc: ': Genome version (for commands that require databases).'
  type: string
  inputBinding:
    prefix: -g
- id: no_download
  doc: ': Do not download a database, if not available locally.'
  type: boolean
  inputBinding:
    prefix: -noDownload
- id: no_log
  doc: ': Do not report usage statistics to server.'
  type: boolean
  inputBinding:
    prefix: -noLog
- id: v
  doc: ': Verbose.'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- SnpSift
- gwasCat
