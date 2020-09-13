version 1.0

task Extracthbvsh {
  command <<<
    extracthbv_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}