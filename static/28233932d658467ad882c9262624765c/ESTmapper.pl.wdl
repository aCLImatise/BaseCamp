version 1.0

task ESTmapperpl {
  command <<<
    ESTmapper_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}