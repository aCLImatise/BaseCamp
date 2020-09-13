version 1.0

task Ginkgosh {
  command <<<
    ginkgo_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}