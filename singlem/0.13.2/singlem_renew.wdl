version 1.0

task SinglemRenew {
  input {
    Array[String] input_archive_otu_tables
    Boolean? full_help
    Boolean? quiet
    Boolean? debug
  }
  command <<<
    singlem renew \
      ~{if defined(input_archive_otu_tables) then ("--input_archive_otu_tables " +  '"' + input_archive_otu_tables + '"') else ""} \
      ~{if (full_help) then "--full_help" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    input_archive_otu_tables: ""
    full_help: ""
    quiet: ""
    debug: ""
  }
  output {
    File out_stdout = stdout()
  }
}