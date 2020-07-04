version 1.0

task GenieBamView {
  input {
    String? file_path
    Boolean? header_only
    Boolean? human_readable
    Boolean? include_header
    Int? limit_reads
    String? scope
    String? flags
  }
  command <<<
    genie bam view \
      ~{flags} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""} \
      ~{true="--headeronly" false="" header_only} \
      ~{true="--human-readable" false="" human_readable} \
      ~{true="--includeheader" false="" include_header} \
      ~{if defined(limit_reads) then ("--limitreads " +  '"' + limit_reads + '"') else ""} \
      ~{if defined(scope) then ("--scope " +  '"' + scope + '"') else ""}
  >>>
  parameter_meta {
    file_path: "A bam file (*require)"
    header_only: "Show the header only"
    human_readable: "Show reads in human readable format"
    include_header: "Show header and records"
    limit_reads: "Limit reads (-1 is unlimited) (default -1)"
    scope: "Scope chr:begin-end"
    flags: ""
  }
}