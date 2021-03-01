version 1.0

task CloseGapsoneDirectoryperl {
  command <<<
    closeGaps_oneDirectory_perl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}