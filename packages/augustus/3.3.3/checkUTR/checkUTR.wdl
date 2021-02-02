version 1.0

task CheckUTR {
  command <<<
    checkUTR
  >>>
  output {
    File out_stdout = stdout()
  }
}