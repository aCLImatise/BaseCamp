version 1.0

task HelperFuncsR {
  command <<<
    HelperFuncs_R
  >>>
  output {
    File out_stdout = stdout()
  }
}