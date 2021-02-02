version 1.0

task Autom4tebak {
  command <<<
    autom4te_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}