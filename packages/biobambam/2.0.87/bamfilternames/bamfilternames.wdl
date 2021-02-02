version 1.0

task Bamfilternames {
  command <<<
    bamfilternames
  >>>
  output {
    File out_stdout = stdout()
  }
}