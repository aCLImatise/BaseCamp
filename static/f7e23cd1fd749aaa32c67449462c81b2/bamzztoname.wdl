version 1.0

task Bamzztoname {
  command <<<
    bamzztoname
  >>>
  output {
    File out_stdout = stdout()
  }
}