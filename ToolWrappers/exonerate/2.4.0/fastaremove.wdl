version 1.0

task Fastaremove {
  command <<<
    fastaremove
  >>>
  output {
    File out_stdout = stdout()
  }
}