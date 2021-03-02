version 1.0

task Epost {
  input {
    Boolean? db
    Boolean? id
    Boolean? format
    Boolean? read_file_stdin
  }
  command <<<
    epost \
      ~{if (db) then "-db" else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (format) then "-format" else ""} \
      ~{if (read_file_stdin) then "-input" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1"
  }
  parameter_meta {
    db: "Database name"
    id: "Unique identifier(s) or accession number(s)"
    format: "uid or acc"
    read_file_stdin: "Read from file instead of stdin"
  }
  output {
    File out_stdout = stdout()
  }
}