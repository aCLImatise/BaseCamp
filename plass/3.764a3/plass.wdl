version 1.0

task Plass {
  command <<<
    plass
  >>>
  output {
    File out_stdout = stdout()
  }
}