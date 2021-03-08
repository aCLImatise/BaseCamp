version 1.0

task Carnapl {
  command <<<
    carna_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}