version 1.0

task Popdel {
  command <<<
    popdel
  >>>
  runtime {
    docker: "quay.io/biocontainers/popdel:1.3.0--h8e334b0_0"
  }
  output {
    File out_stdout = stdout()
  }
}