version 1.0

task FastafunkSplit {
  input {
    File? in_metadata
    String? index_field
    Boolean? verbose
    File? log_file
    File? in_fast_a
    File? index_column
    Array[String] lineage
    String? lineage_csv
    String? aliases
    Directory? out_folder
  }
  command <<<
    fastafunk split \
      ~{if defined(in_metadata) then ("--in-metadata " +  '"' + in_metadata + '"') else ""} \
      ~{if defined(index_field) then ("--index-field " +  '"' + index_field + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(in_fast_a) then ("--in-fasta " +  '"' + in_fast_a + '"') else ""} \
      ~{if defined(index_column) then ("--index-column " +  '"' + index_column + '"') else ""} \
      ~{if defined(lineage) then ("--lineage " +  '"' + lineage + '"') else ""} \
      ~{if defined(lineage_csv) then ("--lineage-csv " +  '"' + lineage_csv + '"') else ""} \
      ~{if defined(aliases) then ("--aliases " +  '"' + aliases + '"') else ""} \
      ~{if defined(out_folder) then ("--out-folder " +  '"' + out_folder + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fastafunk:0.0.9--pyh3252c3a_0"
  }
  parameter_meta {
    in_metadata: "[--index-column <column>]"
    index_field: "[--lineage LINEAGE [LINEAGE ...]]"
    verbose: "Run with high verbosity (debug level logging)"
    log_file: "Log file to use (otherwise uses stdout, or stderr if\\nout-fasta to stdout)"
    in_fast_a: "One FASTA files of sequences (else reads from stdin)"
    index_column: "Column(s) in the metadata file to use to match to the\\nsequence"
    lineage: "Specific list of lineages to split by with others\\ncollpasing to nearest lineage."
    lineage_csv: "CSV with lineage and outgroup columns defining the\\nlineages to split by."
    aliases: "JSON with aliases for lettered lineages."
    out_folder: "A directory for output FASTA files\\n"
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
    Directory out_out_folder = "${in_out_folder}"
  }
}