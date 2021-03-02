version 1.0

task Elprep {
  command <<<
    elprep
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}