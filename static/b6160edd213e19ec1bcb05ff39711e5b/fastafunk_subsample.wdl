version 1.0

task FastafunkSubsample {
  input {
    Boolean? verbose
    File? log_file
    File? in_fast_a
    File? in_metadata
    String? index_field
    File? index_column
    File? group_column
    String? where_field
    File? out_fast_a
    File? out_metadata
    File? target_file
    Int? select_by_max_column
    Int? select_by_min_column
    Int? sample_size
    Boolean? exclude_uk
  }
  command <<<
    fastafunk subsample \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(in_fast_a) then ("--in-fasta " +  '"' + in_fast_a + '"') else ""} \
      ~{if defined(in_metadata) then ("--in-metadata " +  '"' + in_metadata + '"') else ""} \
      ~{if defined(index_field) then ("--index-field " +  '"' + index_field + '"') else ""} \
      ~{if defined(index_column) then ("--index-column " +  '"' + index_column + '"') else ""} \
      ~{if defined(group_column) then ("--group-column " +  '"' + group_column + '"') else ""} \
      ~{if defined(where_field) then ("--where-field " +  '"' + where_field + '"') else ""} \
      ~{if defined(out_fast_a) then ("--out-fasta " +  '"' + out_fast_a + '"') else ""} \
      ~{if defined(out_metadata) then ("--out-metadata " +  '"' + out_metadata + '"') else ""} \
      ~{if defined(target_file) then ("--target-file " +  '"' + target_file + '"') else ""} \
      ~{if defined(select_by_max_column) then ("--select-by-max-column " +  '"' + select_by_max_column + '"') else ""} \
      ~{if defined(select_by_min_column) then ("--select-by-min-column " +  '"' + select_by_min_column + '"') else ""} \
      ~{if defined(sample_size) then ("--sample-size " +  '"' + sample_size + '"') else ""} \
      ~{if (exclude_uk) then "--exclude-uk" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fastafunk:0.0.9--pyh3252c3a_0"
  }
  parameter_meta {
    verbose: "Run with high verbosity (debug level logging)"
    log_file: "Log file to use (otherwise uses stdout, or stderr if\\nout-fasta to stdout)"
    in_fast_a: "[<filename> ...]\\nOne or more FASTA files of sequences (else reads from\\nstdin)"
    in_metadata: "[<filename> ...]\\nOne or more CSV or TSV tables of metadata"
    index_field: "[<field> ...]\\nField(s) in the fasta header to match the metadata\\n(else matches column names)"
    index_column: "Column in the metadata file to use to match to the\\nsequence"
    group_column: "[<column> ...]\\nColumn(s) in the metadata file to define groupings"
    where_field: "=<regex>\\nAdditional matches to header fields"
    out_fast_a: "A FASTA file (else writes to stdout)"
    out_metadata: "A metadata file"
    target_file: "CSV file of target numbers per group e.g. an edited\\nversion of the count output"
    select_by_max_column: "Column in the metadata file maximize over when\\nsubsetting"
    select_by_min_column: "Column in the metadata file minimize over when\\nsubsetting"
    sample_size: "The number of samples per group to select if not\\nspecified by target file"
    exclude_uk: "Includes all UK samples in subsample, and additionally\\nkeeps the target number of non-UK samples per group\\n"
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
    File out_target_file = "${in_target_file}"
  }
}