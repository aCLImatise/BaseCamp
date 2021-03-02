version 1.0

task Tabix {
  command <<<
    tabix__
  >>>
  runtime {
    docker: "quay.io/biocontainers/tabixpp:1.1.0--hd2e4403_4"
  }
  output {
    File out_stdout = stdout()
  }
}