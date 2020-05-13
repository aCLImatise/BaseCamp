version 1.0

task VarscanMpileup2cns {
  input {
    Boolean minMinCoverage
    Boolean minMinReadS2
    Boolean minMinAvgQual
    Boolean minMinVarFreq
    Boolean minMinFreqForHom
    Boolean pPValue
    String strandStrandFilter
    Boolean outputOutputVcf
    Boolean vcfVcfSampleList
    Boolean variantsVariants
  }
  command <<<
    varscan mpileup2cns \
      ~{true="--min-coverage" false="" minMinCoverage} \
      ~{true="--min-reads2" false="" minMinReadS2} \
      ~{true="--min-avg-qual" false="" minMinAvgQual} \
      ~{true="--min-var-freq" false="" minMinVarFreq} \
      ~{true="--min-freq-for-hom" false="" minMinFreqForHom} \
      ~{true="--p-value" false="" pPValue} \
      ~{if defined(strandStrandFilter) then ("--strand-filter " +  '"' + strandStrandFilter + '"') else ""} \
      ~{true="--output-vcf" false="" outputOutputVcf} \
      ~{true="--vcf-sample-list" false="" vcfVcfSampleList} \
      ~{true="--variants" false="" variantsVariants}
  >>>
}