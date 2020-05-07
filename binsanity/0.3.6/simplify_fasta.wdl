version 1.0

task SimplifyFasta {
  input {
    Boolean iI
    Boolean oO
  }
  command <<<
    simplify-fasta \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO}
  >>>
}