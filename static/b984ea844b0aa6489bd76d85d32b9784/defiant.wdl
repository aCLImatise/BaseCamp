version 1.0

task Defiant {
  command <<<
    defiant
  >>>
  output {
    File out_stdout = stdout()
  }
}