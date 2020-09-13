version 1.0

task Mugsyenvsh {
  command <<<
    mugsyenv_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}