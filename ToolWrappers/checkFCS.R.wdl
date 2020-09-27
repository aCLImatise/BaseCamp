version 1.0

task CheckFCSR {
  command <<<
    checkFCS_R
  >>>
  output {
    File out_stdout = stdout()
  }
}