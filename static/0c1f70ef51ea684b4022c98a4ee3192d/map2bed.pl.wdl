version 1.0

task Map2bedpl {
  command <<<
    map2bed_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}