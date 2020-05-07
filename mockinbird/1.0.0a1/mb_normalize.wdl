version 1.0

task MbNormalize {
  input {
    String mutMutSnpRatio
    String? inputInputFile
    String? outputOutputFile
    String? normalizationNormalizationPileUp
  }
  command <<<
    mb-normalize \
      ~{inputInputFile} \
      ~{if defined(mutMutSnpRatio) then ("--mut_snp_ratio " +  '"' + mutMutSnpRatio + '"') else ""} \
      ~{outputOutputFile} \
      ~{normalizationNormalizationPileUp}
  >>>
}