version 1.0

task Kmerstats {
  command <<<
    kmerstats
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}