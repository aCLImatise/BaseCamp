version 1.0

task CountConstantSites {
  command <<<
    count_constant_sites
  >>>
  output {
    File out_stdout = stdout()
  }
}