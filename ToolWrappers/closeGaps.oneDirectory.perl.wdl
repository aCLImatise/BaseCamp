version 1.0

task CloseGapsoneDirectoryperl {
  command <<<
    closeGaps_oneDirectory_perl
  >>>
  output {
    File out_stdout = stdout()
  }
}