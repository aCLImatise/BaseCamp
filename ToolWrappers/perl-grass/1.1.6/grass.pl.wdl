version 1.0

task Grasspl {
  command <<<
    grass_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}