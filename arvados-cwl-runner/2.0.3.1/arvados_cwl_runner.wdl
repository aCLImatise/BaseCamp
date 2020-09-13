version 1.0

task Arvadoscwlrunner {
  command <<<
    arvados_cwl_runner
  >>>
  output {
    File out_stdout = stdout()
  }
}