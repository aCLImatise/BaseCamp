version 1.0

task CombineSegBoostrapR {
  command <<<
    combineSegBoostrap_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}