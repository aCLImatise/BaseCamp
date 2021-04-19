version 1.0

task Isatools {
  command <<<
    isatools
  >>>
  runtime {
    docker: "quay.io/biocontainers/isatools:0.12.1--pyhdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}