class: CommandLineTool
id: SnpSift_gwasCat.cwl
inputs:
- id: in_config_file_specify
  doc: ', -config <file>  : Specify config file'
  type: boolean
  inputBinding:
    prefix: -c
- id: in__debug
  doc: ': Debug.'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_db
  doc: ': Database file name (for commands that require databases).'
  type: File
  inputBinding:
    prefix: -db
- id: in_download
  doc: ': Download database, if not available locally. Default: true.'
  type: boolean
  inputBinding:
    prefix: -download
- id: in_genome_version_commands
  doc: ': Genome version (for commands that require databases).'
  type: string
  inputBinding:
    prefix: -g
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
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_g_was_cat
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file_dot_vcf
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SnpSift
- gwasCat
