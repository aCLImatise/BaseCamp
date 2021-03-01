version 1.0

task ORFfinder {
  command <<<
    ORFfinder
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}