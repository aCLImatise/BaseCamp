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
  runtime {
    docker: "None"
  }
  parameter_meta {
    connection: "Connection string for neo4j upload."
    path: ""
  }
  output {
    File out_stdout = stdout()
  }
}