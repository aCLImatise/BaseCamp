version 1.0

task FcRun {
  command <<<
    fc_run
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}