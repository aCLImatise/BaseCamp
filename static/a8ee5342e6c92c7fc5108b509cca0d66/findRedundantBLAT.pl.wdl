version 1.0

task FindRedundantBLATpl {
  command <<<
    findRedundantBLAT_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}