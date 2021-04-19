version 1.0

task ParsecHistoriesDeleteHistory {
  input {
    Boolean? purge
    String the
  }
  command <<<
    parsec histories delete_history \
      ~{the} \
      ~{if (purge) then "--purge" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    purge: "if ``True``, also purge (permanently delete) the history"
    the: "history was marked as deleted), ``purged`` (if"
  }
  output {
    File out_stdout = stdout()
  }
}