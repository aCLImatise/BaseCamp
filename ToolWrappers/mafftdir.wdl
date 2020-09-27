version 1.0

task Mafftdir {
  command <<<
    mafftdir
  >>>
  output {
    File out_stdout = stdout()
  }
}