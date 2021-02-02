version 1.0

task Plncpro {
  command <<<
    plncpro
  >>>
  output {
    File out_stdout = stdout()
  }
}