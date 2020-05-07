version 1.0

task BayesTyperCluster {
  input {
    Boolean vV
    Boolean sS
    Boolean gG
    Boolean dD
    Boolean oO
    Boolean rR
    Boolean pP
    Boolean uU
    String maxMaxAlleleLength
    String copyCopyNumberVariantThreshold
    String maxMaxNumberOfSampleHaplotypes
  }
  command <<<
    bayesTyper cluster \
      ~{true="-v" false="" vV} \
      ~{true="-s" false="" sS} \
      ~{true="-g" false="" gG} \
      ~{true="-d" false="" dD} \
      ~{true="-o" false="" oO} \
      ~{true="-r" false="" rR} \
      ~{true="-p" false="" pP} \
      ~{true="-u" false="" uU} \
      ~{if defined(maxMaxAlleleLength) then ("--max-allele-length " +  '"' + maxMaxAlleleLength + '"') else ""} \
      ~{if defined(copyCopyNumberVariantThreshold) then ("--copy-number-variant-threshold " +  '"' + copyCopyNumberVariantThreshold + '"') else ""} \
      ~{if defined(maxMaxNumberOfSampleHaplotypes) then ("--max-number-of-sample-haplotypes " +  '"' + maxMaxNumberOfSampleHaplotypes + '"') else ""}
  >>>
}