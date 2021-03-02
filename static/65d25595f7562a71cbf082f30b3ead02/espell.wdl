version 1.0

task Espell {
  input {
    Boolean? db
    Boolean? query
  }
  command <<<
    espell \
      ~{if (db) then "-db" else ""} \
      ~{if (query) then "-query" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: "Database name"
    query: "Query string"
  }
  output {
    File out_stdout = stdout()
  }
}