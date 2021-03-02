version 1.0

task Cwlrunner {
  command <<<
    cwl_runner
  >>>
  runtime {
    docker: "quay.io/biocontainers/arvados-cwl-runner:2.0.4--pyh864c0ab_0"
  }
  output {
    File out_stdout = stdout()
  }
}