version 1.0

task Promlk {
  command <<<
    promlk
  >>>
  output {
    File out_stdout = stdout()
  }
}