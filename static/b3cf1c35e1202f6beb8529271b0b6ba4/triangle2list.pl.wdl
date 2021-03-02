version 1.0

task Triangle2listpl {
  command <<<
    triangle2list_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}