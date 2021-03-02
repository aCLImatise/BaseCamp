version 1.0

task CountConstantSites {
  command <<<
    count_constant_sites
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}