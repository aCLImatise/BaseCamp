version 1.0

task Pisces {
  command <<<
    pisces
  >>>
  output {
    File out_stdout = stdout()
  }
}