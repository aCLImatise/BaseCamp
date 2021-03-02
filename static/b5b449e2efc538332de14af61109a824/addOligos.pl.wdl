version 1.0

task AddOligospl {
  command <<<
    addOligos_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}