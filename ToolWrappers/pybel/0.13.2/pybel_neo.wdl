version 1.0

task PybelNeo {
  input {
    String? connection
    File path
  }
  command <<<
    pybel neo \
      ~{path} \
      ~{if defined(connection) then ("--connection " +  '"' + connection + '"') else ""}
  >>>
  parameter_meta {
    connection: "Connection string for neo4j upload.\\n--password TEXT\\n--help             Show this message and exit.\\n"
    path: ""
  }
  output {
    File out_stdout = stdout()
  }
}