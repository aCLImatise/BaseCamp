version 1.0

task VarscanSomatic {
  input {
    File outputOutputSnp
    File outputOutputInDel
    String minMinCoverage
    String minMinCoverageNormal
    String minMinCoverageTumor
    String minMinVarFreq
    Boolean minMinFreqForHom
    String normalNormalPurity
    String tumorTumorPurity
    String pPValue
    String somaticSomaticPValue
    String strandStrandFilter
    String validationValidation
    String outputOutputVcf
  }
  command <<<
    varscan somatic \
      ~{if defined(outputOutputSnp) then ("--output-snp " +  '"' + outputOutputSnp + '"') else ""} \
      ~{if defined(outputOutputInDel) then ("--output-indel " +  '"' + outputOutputInDel + '"') else ""} \
      ~{if defined(minMinCoverage) then ("--min-coverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{if defined(minMinCoverageNormal) then ("--min-coverage-normal " +  '"' + minMinCoverageNormal + '"') else ""} \
      ~{if defined(minMinCoverageTumor) then ("--min-coverage-tumor " +  '"' + minMinCoverageTumor + '"') else ""} \
      ~{if defined(minMinVarFreq) then ("--min-var-freq " +  '"' + minMinVarFreq + '"') else ""} \
      ~{true="--min-freq-for-hom" false="" minMinFreqForHom} \
      ~{if defined(normalNormalPurity) then ("--normal-purity " +  '"' + normalNormalPurity + '"') else ""} \
      ~{if defined(tumorTumorPurity) then ("--tumor-purity " +  '"' + tumorTumorPurity + '"') else ""} \
      ~{if defined(pPValue) then ("--p-value " +  '"' + pPValue + '"') else ""} \
      ~{if defined(somaticSomaticPValue) then ("--somatic-p-value " +  '"' + somaticSomaticPValue + '"') else ""} \
      ~{if defined(strandStrandFilter) then ("--strand-filter " +  '"' + strandStrandFilter + '"') else ""} \
      ~{if defined(validationValidation) then ("--validation " +  '"' + validationValidation + '"') else ""} \
      ~{if defined(outputOutputVcf) then ("--output-vcf " +  '"' + outputOutputVcf + '"') else ""}
  >>>
}