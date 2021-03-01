version 1.0

task CleanDOSfastapl {
  command <<<
    cleanDOSfasta_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}