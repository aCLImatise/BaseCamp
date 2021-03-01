version 1.0

task Hnumpl {
  command <<<
    h_num_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}