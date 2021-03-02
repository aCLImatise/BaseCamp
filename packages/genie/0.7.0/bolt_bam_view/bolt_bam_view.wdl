version 1.0

task BoltBamView {
  input {
    File? file_path
    Boolean? header_only
    Boolean? human_readable
    Boolean? include_header
    Int? limit_reads
    String? scope
    String genie
    String bam
    String view
  }
  command <<<
    bolt bam view \
      ~{genie} \
      ~{bam} \
      ~{view} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""} \
      ~{if (header_only) then "--headeronly" else ""} \
      ~{if (human_readable) then "--human-readable" else ""} \
      ~{if (include_header) then "--includeheader" else ""} \
      ~{if defined(limit_reads) then ("--limitreads " +  '"' + limit_reads + '"') else ""} \
      ~{if defined(scope) then ("--scope " +  '"' + scope + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_path: "A bam file (*require)"
    header_only: "Show the header only"
    human_readable: "Show reads in human readable format"
    include_header: "Show header and records"
    limit_reads: "Limit reads (-1 is unlimited) (default -1)"
    scope: "Scope chr:begin-end"
    genie: ""
    bam: ""
    view: ""
  }
  output {
    File out_stdout = stdout()
  }
}