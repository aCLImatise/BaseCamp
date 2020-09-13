version 1.0

task AxtToMaf {
  command <<<
    axtToMaf
  >>>
  output {
    File out_stdout = stdout()
  }
}