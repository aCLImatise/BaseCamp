version 1.0

task Dnainvar {
  command <<<
    dnainvar
  >>>
  output {
    File out_stdout = stdout()
  }
}