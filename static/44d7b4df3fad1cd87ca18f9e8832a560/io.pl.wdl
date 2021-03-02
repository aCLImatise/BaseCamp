version 1.0

task Iopl {
  command <<<
    io_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}