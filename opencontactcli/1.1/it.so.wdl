version 1.0

task Itso {
  command <<<
    it_so
  >>>
  output {
    File out_stdout = stdout()
  }
}