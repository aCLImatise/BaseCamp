version 1.0

task AlignmentHandlerMulti {
  command <<<
    alignment_handler_multi
  >>>
  output {
    File out_stdout = stdout()
  }
}