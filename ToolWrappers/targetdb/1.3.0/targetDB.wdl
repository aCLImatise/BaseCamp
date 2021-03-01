version 1.0

task TargetDB {
  command <<<
    targetDB
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}