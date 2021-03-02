version 1.0

task Arvadoscwlrunner {
  command <<<
    arvados_cwl_runner
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}