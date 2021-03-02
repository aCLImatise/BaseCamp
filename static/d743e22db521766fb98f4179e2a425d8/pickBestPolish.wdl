version 1.0

task PickBestPolish {
  command <<<
    pickBestPolish
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}