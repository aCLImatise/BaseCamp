version 1.0

task Randomdata {
  command <<<
    randomdata
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}