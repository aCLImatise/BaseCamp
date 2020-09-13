version 1.0

task NebulizerCreateBatchUsers {
  command <<<
    nebulizer create_batch_users
  >>>
  output {
    File out_stdout = stdout()
  }
}