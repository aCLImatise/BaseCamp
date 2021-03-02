version 1.0

task RandomList2pl {
  command <<<
    randomList2_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}