class: CommandLineTool
id: dbTestScript.cwl
inputs:
- id: in_loglevel
  doc: ': Set the log level'
  type: boolean?
  inputBinding:
    prefix: --logLevel
- id: in_database_conf
  doc: ': The database connection script'
  type: boolean?
  inputBinding:
    prefix: --databaseConf
- id: in_first_key
  doc: ': First key.'
  type: boolean?
  inputBinding:
    prefix: --firstKey
- id: in_key_number
  doc: ': Total number of keys.'
  type: boolean?
  inputBinding:
    prefix: --keyNumber
- id: in_add_records
  doc: ': Add records instead of getting them.'
  type: boolean?
  inputBinding:
    prefix: --addRecords
- id: in_set_records
  doc: ': After adding/getting records, set the records.'
  type: boolean?
  inputBinding:
    prefix: --setRecords
- id: in_min_record_size
  doc: ': Min size of record.'
  type: boolean?
  inputBinding:
    prefix: --minRecordSize
- id: in_create
  doc: ': Make the database.'
  type: boolean?
  inputBinding:
    prefix: --create
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dbTestScript
