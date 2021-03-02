version 1.0

task Runmummer1 {
  command <<<
    run_mummer1
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}