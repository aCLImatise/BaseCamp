version 1.0

task ParsecHistoriesCreateHistory {
  input {
    String? name
  }
  command <<<
    parsec histories create_history \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    name: "Optional name for new history"
  }
  output {
    File out_stdout = stdout()
  }
}