version 1.0

task AlignmentHandlerMulti {
  command <<<
    alignment_handler_multi
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}