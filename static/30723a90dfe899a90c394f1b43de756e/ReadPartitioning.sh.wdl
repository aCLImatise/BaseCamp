version 1.0

task ReadPartitioningsh {
  command <<<
    ReadPartitioning_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}