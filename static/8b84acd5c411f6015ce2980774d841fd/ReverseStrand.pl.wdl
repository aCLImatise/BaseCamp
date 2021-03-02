version 1.0

task ReverseStrandpl {
  command <<<
    ReverseStrand_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}