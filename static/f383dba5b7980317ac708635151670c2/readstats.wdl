version 1.0

task Readstats {
  command <<<
    readstats
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}