version 1.0

task Baseml {
  command <<<
    baseml
  >>>
  output {
    File out_stdout = stdout()
  }
}