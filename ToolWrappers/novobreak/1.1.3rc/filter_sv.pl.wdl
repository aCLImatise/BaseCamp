version 1.0

task FilterSvpl {
  command <<<
    filter_sv_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}