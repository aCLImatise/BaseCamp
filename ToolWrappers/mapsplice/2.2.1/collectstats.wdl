version 1.0

task Collectstats {
  command <<<
    collectstats
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}