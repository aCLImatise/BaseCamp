version 1.0

task HLALApl {
  command <<<
    HLA_LA_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}