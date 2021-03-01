version 1.0

task FDRpy {
  command <<<
    FDR_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/rmats:4.1.1--py27h9b06725_0"
  }
  output {
    File out_stdout = stdout()
  }
}