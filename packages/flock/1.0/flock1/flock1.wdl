version 1.0

task Flock1 {
  command <<<
    flock1
  >>>
  output {
    File out_stdout = stdout()
  }
}