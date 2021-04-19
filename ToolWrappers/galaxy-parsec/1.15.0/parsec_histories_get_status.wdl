version 1.0

task ParsecHistoriesGetStatus {
  input {
    String completion_dot
  }
  command <<<
    parsec histories get_status \
      ~{completion_dot}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    completion_dot: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}