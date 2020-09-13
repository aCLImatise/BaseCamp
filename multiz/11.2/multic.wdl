version 1.0

task Multic {
  command <<<
    multic
  >>>
  output {
    File out_stdout = stdout()
  }
}