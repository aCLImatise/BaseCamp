version 1.0

task Runmummer3 {
  command <<<
    run_mummer3
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}