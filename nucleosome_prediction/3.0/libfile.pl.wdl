version 1.0

task Libfilepl {
  command <<<
    libfile_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}