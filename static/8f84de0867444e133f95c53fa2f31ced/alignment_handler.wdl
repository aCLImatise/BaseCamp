version 1.0

task AlignmentHandler {
  command <<<
    alignment_handler
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}