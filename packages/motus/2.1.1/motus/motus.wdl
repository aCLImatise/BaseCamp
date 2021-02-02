version 1.0

task Motus {
  command <<<
    motus
  >>>
  output {
    File out_stdout = stdout()
  }
}