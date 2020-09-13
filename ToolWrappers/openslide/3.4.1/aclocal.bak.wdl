version 1.0

task Aclocalbak {
  command <<<
    aclocal_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}