version 1.0

task Nanocompore {
  command <<<
    nanocompore
  >>>
  output {
    File out_stdout = stdout()
  }
}