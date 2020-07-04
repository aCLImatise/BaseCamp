version 1.0

task VdbCopy.2 {
  input {
    String? table
    String? rows
    String? schema
    Boolean? without_accession
    Boolean? ignore_reject
    Boolean? ignore_redact
    Boolean? kfg_path
    Boolean? show_matching
    Boolean? show_progress
    String? ignore_incompatible_columns
    Boolean? re_index
    Boolean? show_redact
    Boolean? exclude_columns
    Boolean? show_meta
    Boolean? force
    Boolean? unlock
    Boolean? md_five_mode
    Boolean? blob_checksum
    String? log_level
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String src_path
    String dst_path
  }
  command <<<
    vdb-copy.2 \
      ~{src_path} \
      ~{dst_path} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if defined(rows) then ("--rows " +  '"' + rows + '"') else ""} \
      ~{if defined(schema) then ("--schema " +  '"' + schema + '"') else ""} \
      ~{true="--without_accession" false="" without_accession} \
      ~{true="--ignore_reject" false="" ignore_reject} \
      ~{true="--ignore_redact" false="" ignore_redact} \
      ~{true="--kfg_path" false="" kfg_path} \
      ~{true="--show_matching" false="" show_matching} \
      ~{true="--show_progress" false="" show_progress} \
      ~{if defined(ignore_incompatible_columns) then ("--ignore_incompatible_columns " +  '"' + ignore_incompatible_columns + '"') else ""} \
      ~{true="--reindex" false="" re_index} \
      ~{true="--show_redact" false="" show_redact} \
      ~{true="--exclude_columns" false="" exclude_columns} \
      ~{true="--show_meta" false="" show_meta} \
      ~{true="--force" false="" force} \
      ~{true="--unlock" false="" unlock} \
      ~{true="--md5mode" false="" md_five_mode} \
      ~{true="--blob_checksum" false="" blob_checksum} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    table: "table-name "
    rows: "set of rows to be copied(default all) "
    schema: "schema-name "
    without_accession: "without accession-test "
    ignore_reject: "ignore SRA_FILTER_REJECT values "
    ignore_redact: "ignore SRA_FILTER_REDACTED values "
    kfg_path: "use this path to find the file vdb-copy.kfg "
    show_matching: "show type-matching results "
    show_progress: "show progress in percent while copying "
    ignore_incompatible_columns: "incompatible columns "
    re_index: "reindex columns after copy "
    show_redact: "show redaction-process "
    exclude_columns: "exclude these columns from copy "
    show_meta: "show metadata-copy-process "
    force: "forces an existing target to be overwritten "
    unlock: "forces locked target to be unlocked "
    md_five_mode: "MD5-mode def.: auto, '1'...forced ON,  '0'...forced OFF) "
    blob_checksum: "Blob-checksum def.: auto, '1'...CRC32,  'M'...MD5, '0'...OFF) "
    log_level: "Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug) or  (0-6) Current/default is warn "
    verbose: "Increase the verbosity of the program  status messages. Use multiple times for more  verbosity. Negates quiet. "
    quiet: "Turn off all status messages for the  program. Negated by verbose. "
    option_file: "Read more options and parameters from the  file. "
    src_path: ""
    dst_path: ""
  }
}