version 1.0

task FindDMin2pl {
  command <<<
    findDMin2_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}