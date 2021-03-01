class: CommandLineTool
id: vdb_copy.2.10.9.cwl
inputs:
- id: in_table
  doc: table-name
  type: string?
  inputBinding:
    prefix: --table
- id: in_rows
  doc: set of rows to be copied(default all)
  type: string?
  inputBinding:
    prefix: --rows
- id: in_schema
  doc: schema-name
  type: string?
  inputBinding:
    prefix: --schema
- id: in_without_accession
  doc: without accession-test
  type: boolean?
  inputBinding:
    prefix: --without_accession
- id: in_ignore_reject
  doc: ignore SRA_FILTER_REJECT values
  type: boolean?
  inputBinding:
    prefix: --ignore_reject
- id: in_ignore_redact
  doc: ignore SRA_FILTER_REDACTED values
  type: boolean?
  inputBinding:
    prefix: --ignore_redact
- id: in_kfg_path
  doc: use this path to find the file vdb-copy.kfg
  type: boolean?
  inputBinding:
    prefix: --kfg_path
- id: in_show_matching
  doc: show type-matching results
  type: boolean?
  inputBinding:
    prefix: --show_matching
- id: in_show_progress
  doc: show progress in percent while copying
  type: boolean?
  inputBinding:
    prefix: --show_progress
- id: in_ignore_incompatible_columns
  doc: incompatible columns
  type: string?
  inputBinding:
    prefix: --ignore_incompatible_columns
- id: in_re_index
  doc: reindex columns after copy
  type: boolean?
  inputBinding:
    prefix: --reindex
- id: in_show_redact
  doc: show redaction-process
  type: boolean?
  inputBinding:
    prefix: --show_redact
- id: in_exclude_columns
  doc: exclude these columns from copy
  type: boolean?
  inputBinding:
    prefix: --exclude_columns
- id: in_show_meta
  doc: show metadata-copy-process
  type: boolean?
  inputBinding:
    prefix: --show_meta
- id: in_force
  doc: forces an existing target to be overwritten
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_unlock
  doc: forces locked target to be unlocked
  type: boolean?
  inputBinding:
    prefix: --unlock
- id: in_md_five_mode
  doc: "MD5-mode def.: auto, '1'...forced ON,\n'0'...forced OFF)"
  type: boolean?
  inputBinding:
    prefix: --md5mode
- id: in_blob_checksum
  doc: "Blob-checksum def.: auto, '1'...CRC32,\n'M'...MD5, '0'...OFF)"
  type: boolean?
  inputBinding:
    prefix: --blob_checksum
- id: in_verbose
  doc: "Increase the verbosity of the program\nstatus messages. Use multiple times\
    \ for more\nverbosity. Negates quiet."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Turn off all status messages for the\nprogram. Negated by verbose."
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_option_file
  doc: Read more options and parameters from the
  type: File?
  inputBinding:
    prefix: --option-file
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: 'vdb-copy.2.10.9 : 2.10.9'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0
cwlVersion: v1.1
baseCommand:
- vdb-copy.2.10.9
