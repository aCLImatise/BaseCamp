version 1.0

task Libdrawgramso {
  command <<<
    libdrawgram_so
  >>>
  output {
    File out_stdout = stdout()
  }
}