version 1.0

task PybelNeo {
  input {
    String? connection
    String? password
    File path
  }
  command <<<
    pybel neo \
      ~{path} \
      ~{if defined(connection) then ("--connection " +  '"' + connection + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""}
  >>>
  parameter_meta {
    connection: "Connection string for neo4j upload."
    password: ""
    path: ""
  }
  output {
    File out_stdout = stdout()
  }
}