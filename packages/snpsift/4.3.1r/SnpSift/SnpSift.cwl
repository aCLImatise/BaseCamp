class: CommandLineTool
id: ../../../SnpSift.cwl
inputs:
- id: in__debug
  doc: ': Debug.'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_download
  doc: ': Download database, if not available locally. Default: true.'
  type: boolean
  inputBinding:
    prefix: -download
- id: in_no_download
  doc: ': Do not download a database, if not available locally.'
  type: boolean
  inputBinding:
    prefix: -noDownload
- id: in_no_log
  doc: ': Do not report usage statistics to server.'
  type: boolean
  inputBinding:
    prefix: -noLog
- id: in__verbose
  doc: ': Verbose.'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SnpSift
