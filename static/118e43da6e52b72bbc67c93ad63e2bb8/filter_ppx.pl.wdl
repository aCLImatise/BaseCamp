version 1.0

task Filterppxpl {
  command <<<
    filter_ppx_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}