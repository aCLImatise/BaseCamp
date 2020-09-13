version 1.0

task AlignmentHandler {
  command <<<
    alignment_handler
  >>>
  output {
    File out_stdout = stdout()
  }
}