version 1.0

task ParsecHistoriesDownloadHistory {
  input {
    String history_id
    String jeh_a_id
    String out_f
  }
  command <<<
    parsec histories download_history \
      ~{history_id} \
      ~{jeh_a_id} \
      ~{out_f}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    history_id: ""
    jeh_a_id: ""
    out_f: ""
  }
  output {
    File out_stdout = stdout()
  }
}