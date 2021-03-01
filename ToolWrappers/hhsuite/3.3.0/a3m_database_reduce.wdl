version 1.0

task A3mDatabaseReduce {
  command <<<
    a3m_database_reduce
  >>>
  runtime {
    docker: "quay.io/biocontainers/hhsuite:3.3.0--py38pl526h6ed170a_0"
  }
  output {
    File out_stdout = stdout()
  }
}