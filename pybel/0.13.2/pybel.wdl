version 1.0

task Pybel {
  input {
    String connectionConnection
  }
  command <<<
    pybel \
      ~{if defined(connectionConnection) then ("--connection " +  '"' + connectionConnection + '"') else ""}
  >>>
}