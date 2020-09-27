version 1.0

task Clique {
  command <<<
    clique
  >>>
  output {
    File out_stdout = stdout()
  }
}