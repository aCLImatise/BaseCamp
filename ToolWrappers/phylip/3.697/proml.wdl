version 1.0

task Proml {
  command <<<
    proml
  >>>
  output {
    File out_stdout = stdout()
  }
}