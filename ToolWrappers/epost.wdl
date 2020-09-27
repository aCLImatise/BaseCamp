version 1.0

task Epost {
  input {
    Boolean? db
    Boolean? id
    Boolean? format
    Boolean? read_file_instead
    Boolean? label
  }
  command <<<
    epost \
      ~{if (db) then "-db" else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (format) then "-format" else ""} \
      ~{if (read_file_instead) then "-input" else ""} \
      ~{if (label) then "-label" else ""}
  >>>
  parameter_meta {
    db: "Database name"
    id: "Unique identifier(s) or accession number(s)"
    format: "uid or acc"
    read_file_instead: "Read from file instead of stdin"
    label: "Alias for query step"
  }
  output {
    File out_stdout = stdout()
  }
}