version 1.0

task Paudarun {
  command <<<
    pauda_run
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}