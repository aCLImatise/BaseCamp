version 1.0

task DnaMutationBlastn {
  command <<<
    dna_mutation blastn
  >>>
  output {
    File out_stdout = stdout()
  }
}