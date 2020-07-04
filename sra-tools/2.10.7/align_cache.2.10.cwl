class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/align_cache.2.10.7.cwl
inputs:
- id: threshold
  doc: "cache PRIMARY_ALIGNMENT records with  difference between values of ALIGN_ID\
    \ and  MATE_ALIGN_ID >= the value of 'threshold'  option "
  type: string
  inputBinding:
    prefix: --threshold
- id: cursor_cache
  doc: 'the size of the read cursor in Megabytes '
  type: string
  inputBinding:
    prefix: --cursor-cache
- id: min_cache_count
  doc: 'if the number of primary alignment ids in  the src db selected for caching
    is less  than <min-cache-count>, the cache db will  not be created at all '
  type: string
  inputBinding:
    prefix: --min-cache-count
- id: xml_log
  doc: 'produce XML-formatted log file '
  type: string
  inputBinding:
    prefix: --xml-log
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
- id: src_db_path
  doc: Path to the database
  type: string
  inputBinding:
    position: 0
- id: new_cache_db_path
  doc: Path to the new cache database to be created
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- align-cache.2.10.7
