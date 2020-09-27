version 1.0

task ReadPartitioningsh {
  command <<<
    ReadPartitioning_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}