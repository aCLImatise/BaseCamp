version 1.0

task AirrtoolsValidate {
  command <<<
    airr_tools validate
  >>>
  output {
    File out_stdout = stdout()
  }
}