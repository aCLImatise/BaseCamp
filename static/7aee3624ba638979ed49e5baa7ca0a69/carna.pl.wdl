version 1.0

task Carnapl {
  command <<<
    carna_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}