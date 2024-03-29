version 1.0

task ParsecHistoriesOpenHistory {
  input {
    String history_id
  }
  command <<<
    parsec histories open_history \
      ~{history_id}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    history_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}