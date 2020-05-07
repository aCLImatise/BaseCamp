class: CommandLineTool
id: SnpSift.cwl
inputs:
- id: d
  doc: ': Debug.'
  type: boolean
  inputBinding:
    prefix: -d
- id: download
  doc: ': Download database, if not available locally. Default: true.'
  type: boolean
  inputBinding:
    prefix: -download
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
