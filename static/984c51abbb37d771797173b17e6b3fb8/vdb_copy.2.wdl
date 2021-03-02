version 1.0

task Vdbcopy2 {
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
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String quit_dot
    File file_dot
  }
  command <<<
    vdb_copy_2 \
      ~{quit_dot} \
      ~{file_dot} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if defined(rows) then ("--rows " +  '"' + rows + '"') else ""} \
      ~{if defined(schema) then ("--schema " +  '"' + schema + '"') else ""} \
      ~{if (without_accession) then "--without_accession" else ""} \
      ~{if (ignore_reject) then "--ignore_reject" else ""} \
      ~{if (ignore_redact) then "--ignore_redact" else ""} \
      ~{if (kfg_path) then "--kfg_path" else ""} \
      ~{if (show_matching) then "--show_matching" else ""} \
      ~{if (show_progress) then "--show_progress" else ""} \
      ~{if defined(ignore_incompatible_columns) then ("--ignore_incompatible_columns " +  '"' + ignore_incompatible_columns + '"') else ""} \
      ~{if (re_index) then "--reindex" else ""} \
      ~{if (show_redact) then "--show_redact" else ""} \
      ~{if (exclude_columns) then "--exclude_columns" else ""} \
      ~{if (show_meta) then "--show_meta" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (unlock) then "--unlock" else ""} \
      ~{if (md_five_mode) then "--md5mode" else ""} \
      ~{if (blob_checksum) then "--blob_checksum" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0"
  }
  parameter_meta {
    table: "table-name"
    rows: "set of rows to be copied(default all)"
    schema: "schema-name"
    without_accession: "without accession-test"
    ignore_reject: "ignore SRA_FILTER_REJECT values"
    ignore_redact: "ignore SRA_FILTER_REDACTED values"
    kfg_path: "use this path to find the file vdb-copy.kfg"
    show_matching: "show type-matching results"
    show_progress: "show progress in percent while copying"
    ignore_incompatible_columns: "incompatible columns"
    re_index: "reindex columns after copy"
    show_redact: "show redaction-process"
    exclude_columns: "exclude these columns from copy"
    show_meta: "show metadata-copy-process"
    force: "forces an existing target to be overwritten"
    unlock: "forces locked target to be unlocked"
    md_five_mode: "MD5-mode def.: auto, '1'...forced ON,\\n'0'...forced OFF)"
    blob_checksum: "Blob-checksum def.: auto, '1'...CRC32,\\n'M'...MD5, '0'...OFF)"
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "vdb-copy.2 : 2.10.9"
  }
  output {
    File out_stdout = stdout()
  }
}