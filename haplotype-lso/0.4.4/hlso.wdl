version 1.0

task Hlso {
  command <<<
    hlso
  >>>
  output {
    File out_stdout = stdout()
  }
}