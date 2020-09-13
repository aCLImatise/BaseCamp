version 1.0

task DnaMutation {
  command <<<
    dna_mutation
  >>>
  output {
    File out_stdout = stdout()
  }
}