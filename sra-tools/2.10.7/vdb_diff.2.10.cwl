class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vdb_diff.2.10.7.cwl
inputs:
- id: rows
  doc: 'set of rows to be comparend (default all) '
  type: string
  inputBinding:
    prefix: --rows
- id: columns
  doc: 'set of columns to be compared (default  all) '
  type: string
  inputBinding:
    prefix: --columns
- id: table
  doc: 'name of table (in case of database to be  compared '
  type: string
  inputBinding:
    prefix: --table
- id: progress
  doc: 'show progress in percent '
  type: boolean
  inputBinding:
    prefix: --progress
- id: max_err
  doc: 'max errors im comparing (default 1) '
  type: long
  inputBinding:
    prefix: --maxerr
- id: intersect
  doc: 'intersect column-set from both runs '
  type: boolean
  inputBinding:
    prefix: --intersect
- id: exclude
  doc: 'exclude these columns from comapring '
  type: string
  inputBinding:
    prefix: --exclude
- id: col_by_col
  doc: 'exclude these columns from comapring '
  type: boolean
  inputBinding:
    prefix: --col-by-col
- id: log_level
  doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  type: string
  inputBinding:
    prefix: --log-level
- id: verbose
  doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: 'Turn off all status messages for the  program. Negated by verbose. '
  type: boolean
  inputBinding:
    prefix: --quiet
- id: option_file
  doc: 'Read more options and parameters from the  file. '
  type: File
  inputBinding:
    prefix: --option-file
- id: src_one_path
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: src_two_path
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- vdb-diff.2.10.7
