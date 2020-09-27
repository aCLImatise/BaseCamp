version 1.0

task RapidToFastapl {
  command <<<
    rapid_ToFasta_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}