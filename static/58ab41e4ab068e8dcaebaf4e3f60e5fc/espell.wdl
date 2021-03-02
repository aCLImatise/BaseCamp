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
    docker: "quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1"
  }
  parameter_meta {
    db: "Database name"
    query: "Query string"
  }
  output {
    File out_stdout = stdout()
  }
}