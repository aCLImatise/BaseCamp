version 1.0

task Bamfilteraux {
  command <<<
    bamfilteraux
  >>>
  output {
    File out_stdout = stdout()
  }
}