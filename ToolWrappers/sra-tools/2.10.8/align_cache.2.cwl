class: CommandLineTool
id: align_cache.2.cwl
inputs:
- id: in_threshold
  doc: "cache PRIMARY_ALIGNMENT records with\ndifference between values of ALIGN_ID\
    \ and\nMATE_ALIGN_ID >= the value of 'threshold'\noption"
  type: string
  inputBinding:
    prefix: --threshold
- id: in_cursor_cache
  doc: the size of the read cursor in Megabytes
  type: long
  inputBinding:
    prefix: --cursor-cache
- id: in_min_cache_count
  doc: "if the number of primary alignment ids in\nthe src db selected for caching\
    \ is less\nthan <min-cache-count>, the cache db will\nnot be created at all"
  type: long
  inputBinding:
    prefix: --min-cache-count
- id: in_xml_log
  doc: produce XML-formatted log file
  type: File
  inputBinding:
    prefix: --xml-log
- id: in_verbose
  doc: "Increase the verbosity of the program\nstatus messages. Use multiple times\
    \ for more\nverbosity. Negates quiet."
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Turn off all status messages for the\nprogram. Negated by verbose."
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_option_file
  doc: Read more options and parameters from the
  type: File
  inputBinding:
    prefix: --option-file
- id: in_src_db_path
  doc: Path to the database
  type: File
  inputBinding:
    position: 0
- id: in_new_cache_db_path
  doc: Path to the new cache database to be created
  type: File
  inputBinding:
    position: 1
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- align-cache.2
