version 1.0

task ZorroDistpl {
  command <<<
    zorro_dist_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}