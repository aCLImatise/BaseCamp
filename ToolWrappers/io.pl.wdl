version 1.0

task Iopl {
  command <<<
    io_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}