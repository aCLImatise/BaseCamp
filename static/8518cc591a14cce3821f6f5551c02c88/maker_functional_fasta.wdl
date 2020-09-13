version 1.0

task MakerFunctionalFasta {
  command <<<
    maker_functional_fasta
  >>>
  output {
    File out_stdout = stdout()
  }
}