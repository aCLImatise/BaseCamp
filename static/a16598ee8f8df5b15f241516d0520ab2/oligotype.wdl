version 1.0

task Oligotype {
  command <<<
    oligotype
  >>>
  output {
    File out_stdout = stdout()
  }
}