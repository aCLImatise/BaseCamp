version 1.0

task Fqlenpl {
  command <<<
    fqlen_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}