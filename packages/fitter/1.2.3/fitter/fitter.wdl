version 1.0

task Fitter {
  command <<<
    fitter
  >>>
  runtime {
    docker: "quay.io/biocontainers/fitter:1.2.3--pyh145b6a8_0"
  }
  output {
    File out_stdout = stdout()
  }
}