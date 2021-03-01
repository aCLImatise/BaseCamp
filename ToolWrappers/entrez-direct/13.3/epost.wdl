version 1.0

task Epost {
  input {
    Boolean? db
    Boolean? id
    Boolean? format
    Boolean? read_file_stdin
    Boolean? label
  }
  command <<<
    epost \
      ~{if (db) then "-db" else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (format) then "-format" else ""} \
      ~{if (read_file_stdin) then "-input" else ""} \
      ~{if (label) then "-label" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: "Database name"
    id: "Unique identifier(s) or accession number(s)"
    format: "uid or acc"
    read_file_stdin: "Read from file instead of stdin"
    label: "Alias for query step"
  }
  output {
    File out_stdout = stdout()
  }
}