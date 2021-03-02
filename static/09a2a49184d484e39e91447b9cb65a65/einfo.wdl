version 1.0

task Einfo {
  input {
    Boolean? dbs
    Boolean? db
    Boolean? fields
    Boolean? links
  }
  command <<<
    einfo \
      ~{if (dbs) then "-dbs" else ""} \
      ~{if (db) then "-db" else ""} \
      ~{if (fields) then "-fields" else ""} \
      ~{if (links) then "-links" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1"
  }
  parameter_meta {
    dbs: "Print all database names"
    db: "Database name (or \\\"all\\\")"
    fields: "Print field names"
    links: "Print link names"
  }
  output {
    File out_stdout = stdout()
  }
}