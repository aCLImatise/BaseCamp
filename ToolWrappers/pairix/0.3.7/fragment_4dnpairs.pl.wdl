version 1.0

task Fragment4dnpairspl {
  command <<<
    fragment_4dnpairs_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}