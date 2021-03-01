version 1.0

task Test2pl {
  command <<<
    test2_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}