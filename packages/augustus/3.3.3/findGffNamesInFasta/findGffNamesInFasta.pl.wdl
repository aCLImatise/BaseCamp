version 1.0

task FindGffNamesInFastapl {
  command <<<
    findGffNamesInFasta_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}