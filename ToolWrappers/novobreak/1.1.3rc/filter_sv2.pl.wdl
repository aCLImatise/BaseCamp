version 1.0

task FilterSv2pl {
  command <<<
    filter_sv2_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}