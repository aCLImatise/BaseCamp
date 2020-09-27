version 1.0

task Formatlist {
  command <<<
    formatlist
  >>>
  output {
    File out_stdout = stdout()
  }
}