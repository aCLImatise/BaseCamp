#!/usr/bin/env cwl-runner

baseCommand:
- vdb-copy.2.10.3
class: CommandLineTool
cwlVersion: v1.0
id: vdb-copy.2.10.3
inputs:
- doc: ''
  id: src_path
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: dst_path
  inputBinding:
    position: 1
  type: string
- doc: 'table-name '
  id: table
  inputBinding:
    prefix: --table
  type: string
- doc: 'set of rows to be copied(default all) '
  id: rows
  inputBinding:
    prefix: --rows
  type: string
- doc: 'schema-name '
  id: schema
  inputBinding:
    prefix: --schema
  type: string
- doc: 'without accession-test '
  id: without_accession
  inputBinding:
    prefix: --without_accession
  type: boolean
- doc: 'ignore SRA_FILTER_REJECT values '
  id: ignore_reject
  inputBinding:
    prefix: --ignore_reject
  type: boolean
- doc: 'ignore SRA_FILTER_REDACTED values '
  id: ignore_redact
  inputBinding:
    prefix: --ignore_redact
  type: boolean
- doc: 'use this path to find the file vdb-copy.kfg '
  id: kfg_path
  inputBinding:
    prefix: --kfg_path
  type: boolean
- doc: 'show type-matching results '
  id: show_matching
  inputBinding:
    prefix: --show_matching
  type: boolean
- doc: 'show progress in percent while copying '
  id: show_progress
  inputBinding:
    prefix: --show_progress
  type: boolean
- doc: 'incompatible columns '
  id: ignore_incompatible_columns
  inputBinding:
    prefix: --ignore_incompatible_columns
  type: string
- doc: 'reindex columns after copy '
  id: re_index
  inputBinding:
    prefix: --reindex
  type: boolean
- doc: 'show redaction-process '
  id: show_redact
  inputBinding:
    prefix: --show_redact
  type: boolean
- doc: 'exclude these columns from copy '
  id: exclude_columns
  inputBinding:
    prefix: --exclude_columns
  type: boolean
- doc: 'show metadata-copy-process '
  id: show_meta
  inputBinding:
    prefix: --show_meta
  type: boolean
- doc: 'forces an existing target to be overwritten '
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: 'forces locked target to be unlocked '
  id: unlock
  inputBinding:
    prefix: --unlock
  type: boolean
- doc: "MD5-mode def.: auto, '1'...forced ON,  '0'...forced OFF) "
  id: md5mode
  inputBinding:
    prefix: --md5mode
  type: boolean
- doc: "Blob-checksum def.: auto, '1'...CRC32,  'M'...MD5, '0'...OFF) "
  id: blob_checksum
  inputBinding:
    prefix: --blob_checksum
  type: boolean
- doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Turn off all status messages for the  program. Negated by verbose. '
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Read more options and parameters from the  file. '
  id: option_file
  inputBinding:
    prefix: --option-file
  type: File
