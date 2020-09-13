version 1.0

task Getlengths {
  command <<<
    getlengths
  >>>
  output {
    File out_stdout = stdout()
  }
}