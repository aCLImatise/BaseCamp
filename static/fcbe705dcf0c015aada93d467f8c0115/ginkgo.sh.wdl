version 1.0

task Ginkgosh {
  command <<<
    ginkgo_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}