version 1.0

task RapidToFastapl {
  command <<<
    rapid_ToFasta_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}