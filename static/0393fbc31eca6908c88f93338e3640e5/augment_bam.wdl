version 1.0

task AugmentBam {
  input {
    File aA
    Boolean cC
    File oO
    Boolean pP
  }
  command <<<
    augment-bam \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-p" false="" pP}
  >>>
}