version 1.0

task EbiMetagenomics {
  command <<<
    ebi_metagenomics
  >>>
  output {
    File out_stdout = stdout()
  }
}