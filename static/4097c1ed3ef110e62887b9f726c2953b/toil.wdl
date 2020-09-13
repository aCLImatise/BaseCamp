version 1.0

task Toil {
  command <<<
    toil
  >>>
  output {
    File out_stdout = stdout()
  }
}