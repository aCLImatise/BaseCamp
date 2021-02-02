version 1.0

task Conterminator {
  command <<<
    conterminator
  >>>
  output {
    File out_stdout = stdout()
  }
}