version 1.0

task CloseGapsoneDirectoryfromMinKmerLenperl {
  command <<<
    closeGaps_oneDirectory_fromMinKmerLen_perl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}