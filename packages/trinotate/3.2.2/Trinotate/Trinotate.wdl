version 1.0

task Trinotate {
  command <<<
    Trinotate
  >>>
  output {
    File out_stdout = stdout()
  }
}