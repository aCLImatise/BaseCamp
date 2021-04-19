version 1.0

task ParsecHistoriesCreateHistoryTag {
  input {
    String history_id
    String tag
  }
  command <<<
    parsec histories create_history_tag \
      ~{history_id} \
      ~{tag}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    history_id: ""
    tag: ""
  }
  output {
    File out_stdout = stdout()
  }
}