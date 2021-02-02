version 1.0

task Assemble {
  command <<<
    Assemble
  >>>
  output {
    File out_stdout = stdout()
  }
}