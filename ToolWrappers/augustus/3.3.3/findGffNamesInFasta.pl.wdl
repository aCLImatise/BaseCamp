version 1.0

task FindGffNamesInFastapl {
  command <<<
    findGffNamesInFasta_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}