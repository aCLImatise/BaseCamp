version 1.0

task Liblistpl {
  command <<<
    liblist_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}