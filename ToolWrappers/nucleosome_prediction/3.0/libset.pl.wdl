version 1.0

task Libsetpl {
  command <<<
    libset_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}