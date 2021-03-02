version 1.0

task Frags2alignsh {
  command <<<
    frags2align_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/gecko:1.2--h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}