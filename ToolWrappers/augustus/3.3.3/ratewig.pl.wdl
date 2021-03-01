version 1.0

task Ratewigpl {
  command <<<
    ratewig_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}