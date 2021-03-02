version 1.0

task HailctlBatchList {
  input {
    String? query
    Int? limit
    Boolean? all
    String? before
    Boolean? full
    Boolean? no_header
    String? specify_format_yaml
  }
  command <<<
    hailctl batch list \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if defined(before) then ("--before " +  '"' + before + '"') else ""} \
      ~{if (full) then "--full" else ""} \
      ~{if (no_header) then "--no-header" else ""} \
      ~{if defined(specify_format_yaml) then ("-o " +  '"' + specify_format_yaml + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1"
  }
  parameter_meta {
    query: "see docs at https://batch.hail.is/batches"
    limit: "number of batches to return (default 50)"
    all: "list all batches (overrides --limit)"
    before: "start listing before supplied id"
    full: "when output is tabular, print more information"
    no_header: "do not print a table header"
    specify_format_yaml: "specify output format (json, yaml, csv, tsv, or any\\ntabulate format)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}