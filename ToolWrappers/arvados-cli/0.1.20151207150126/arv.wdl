version 1.0

task Arv {
  command <<<
    arv
  >>>
  output {
    File out_stdout = stdout()
  }
}