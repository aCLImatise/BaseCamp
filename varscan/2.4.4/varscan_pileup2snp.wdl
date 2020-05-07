version 1.0

task VarscanPileup2snp {
  input {
    Boolean minMinCoverage
    Boolean minMinReadS2
    Boolean minMinAvgQual
    Boolean minMinVarFreq
    Boolean minMinFreqForHom
    Boolean pPValue
    Boolean variantsVariants
  }
  command <<<
    varscan pileup2snp \
      ~{true="--min-coverage" false="" minMinCoverage} \
      ~{true="--min-reads2" false="" minMinReadS2} \
      ~{true="--min-avg-qual" false="" minMinAvgQual} \
      ~{true="--min-var-freq" false="" minMinVarFreq} \
      ~{true="--min-freq-for-hom" false="" minMinFreqForHom} \
      ~{true="--p-value" false="" pPValue} \
      ~{true="--variants" false="" variantsVariants}
  >>>
}