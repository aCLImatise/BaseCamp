version 1.0

task Contamination {
  command <<<
    contamination
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}