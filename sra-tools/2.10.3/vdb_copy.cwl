class: CommandLineTool
id: vdb_copy.2.cwl
inputs:
- id: src_path
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dst_path
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: table
  doc: 'table-name '
  type: string
  inputBinding:
    prefix: --table
- id: rows
  doc: 'set of rows to be copied(default all) '
  type: string
  inputBinding:
    prefix: --rows
- id: schema
  doc: 'schema-name '
  type: string
  inputBinding:
    prefix: --schema
- id: without_accession
  doc: 'without accession-test '
  type: boolean
  inputBinding:
    prefix: --without_accession
- id: ignore_reject
  doc: 'ignore SRA_FILTER_REJECT values '
  type: boolean
  inputBinding:
    prefix: --ignore_reject
- id: ignore_redact
  doc: 'ignore SRA_FILTER_REDACTED values '
  type: boolean
  inputBinding:
    prefix: --ignore_redact
- id: kfg_path
  doc: 'use this path to find the file vdb-copy.kfg '
  type: boolean
  inputBinding:
    prefix: --kfg_path
- id: show_matching
  doc: 'show type-matching results '
  type: boolean
  inputBinding:
    prefix: --show_matching
- id: show_progress
  doc: 'show progress in percent while copying '
  type: boolean
  inputBinding:
    prefix: --show_progress
- id: ignore_incompatible_columns
  doc: 'incompatible columns '
  type: string
  inputBinding:
    prefix: --ignore_incompatible_columns
- id: re_index
  doc: 'reindex columns after copy '
  type: boolean
  inputBinding:
    prefix: --reindex
- id: show_redact
  doc: 'show redaction-process '
  type: boolean
  inputBinding:
    prefix: --show_redact
- id: exclude_columns
  doc: 'exclude these columns from copy '
  type: boolean
  inputBinding:
    prefix: --exclude_columns
- id: show_meta
  doc: 'show metadata-copy-process '
  type: boolean
  inputBinding:
    prefix: --show_meta
- id: force
  doc: 'forces an existing target to be overwritten '
  type: boolean
  inputBinding:
    prefix: --force
- id: unlock
  doc: 'forces locked target to be unlocked '
  type: boolean
  inputBinding:
    prefix: --unlock
- id: md5mode
  doc: "MD5-mode def.: auto, '1'...forced ON,  '0'...forced OFF) "
  type: boolean
  inputBinding:
    prefix: --md5mode
- id: blob_checksum
  doc: "Blob-checksum def.: auto, '1'...CRC32,  'M'...MD5, '0'...OFF) "
  type: boolean
  inputBinding:
    prefix: --blob_checksum
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
outputs: []
cwlVersion: v1.1
baseCommand:
- vdb-copy.2
