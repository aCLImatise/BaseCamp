version 1.0

task Einfo {
  input {
    Boolean? db
    Boolean? dbs
    Boolean? fields
    Boolean? links
  }
  command <<<
    einfo \
      ~{if (db) then "-db" else ""} \
      ~{if (dbs) then "-dbs" else ""} \
      ~{if (fields) then "-fields" else ""} \
      ~{if (links) then "-links" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: "Database name"
    dbs: "Get all database names"
    fields: "Print field names"
    links: "Print link names"
  }
  output {
    File out_stdout = stdout()
  }
}