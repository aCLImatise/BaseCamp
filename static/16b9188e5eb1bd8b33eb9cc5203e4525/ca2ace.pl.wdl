version 1.0

task Ca2acepl {
  command <<<
    ca2ace_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}