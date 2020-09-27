version 1.0

task Fastaclean {
  command <<<
    fastaclean
  >>>
  output {
    File out_stdout = stdout()
  }
}