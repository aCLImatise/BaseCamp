version 1.0

task Trimspace {
  command <<<
    trimspace
  >>>
  output {
    File out_stdout = stdout()
  }
}