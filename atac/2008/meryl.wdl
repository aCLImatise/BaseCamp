version 1.0

task Meryl {
  command <<<
    meryl
  >>>
  output {
    File out_stdout = stdout()
  }
}