version 1.0

task LinkFragments.py {
  input {
    Boolean fF
    Boolean vV
    Boolean bB
    Boolean oO
    Boolean dD
    Boolean singleSingleSnpFrags
  }
  command <<<
    LinkFragments.py \
      ~{true="-f" false="" fF} \
      ~{true="-v" false="" vV} \
      ~{true="-b" false="" bB} \
      ~{true="-o" false="" oO} \
      ~{true="-d" false="" dD} \
      ~{true="--single_SNP_frags" false="" singleSingleSnpFrags}
  >>>
}