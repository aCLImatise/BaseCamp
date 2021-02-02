version 1.0

task FragDuck {
  command <<<
    frag_duck
  >>>
  output {
    File out_stdout = stdout()
  }
}