version 1.0

task Bamsort {
  command <<<
    bamsort
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}