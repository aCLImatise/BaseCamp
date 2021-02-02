version 1.0

task A3mDatabaseReduce {
  command <<<
    a3m_database_reduce
  >>>
  output {
    File out_stdout = stdout()
  }
}