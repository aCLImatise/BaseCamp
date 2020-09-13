version 1.0

task Chain2dim {
  command <<<
    chain2dim
  >>>
  output {
    File out_stdout = stdout()
  }
}