version 1.0

task Contamination2 {
  command <<<
    contamination2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}