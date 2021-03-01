version 1.0

task RmOutToGFF3pl {
  command <<<
    rmOutToGFF3_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}