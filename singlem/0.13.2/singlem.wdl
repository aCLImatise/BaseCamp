version 1.0

task Singlem {
  command <<<
    singlem
  >>>
  output {
    File out_stdout = stdout()
  }
}