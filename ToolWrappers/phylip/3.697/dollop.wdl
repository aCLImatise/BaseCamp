version 1.0

task Dollop {
  command <<<
    dollop
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}