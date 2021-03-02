version 1.0

task Dendropyformat {
  input {
    String? from
    String? data_type
    String? to
    String source_file
  }
  command <<<
    dendropy_format \
      ~{source_file} \
      ~{if defined(from) then ("--from " +  '"' + from + '"') else ""} \
      ~{if defined(data_type) then ("--data-type " +  '"' + data_type + '"') else ""} \
      ~{if defined(to) then ("--to " +  '"' + to + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dendropy:4.5.2--pyh3252c3a_0"
  }
  parameter_meta {
    from: "Format of data source."
    data_type: "Type of data"
    to: "Format of data source.\\n"
    source_file: "Path to source data."
  }
  output {
    File out_stdout = stdout()
  }
}