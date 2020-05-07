version 1.0

task GxFastqMaskerByQuality {
  input {
    String formatFormat
    String maskMaskCharacter
    String scoreScoreComparison
    String qualityQualityScore
    Boolean lowercaseLowercase
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    gx-fastq-masker-by-quality \
      ~{inputInputFile} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(maskMaskCharacter) then ("--mask_character " +  '"' + maskMaskCharacter + '"') else ""} \
      ~{if defined(scoreScoreComparison) then ("--score_comparison " +  '"' + scoreScoreComparison + '"') else ""} \
      ~{if defined(qualityQualityScore) then ("--quality_score " +  '"' + qualityQualityScore + '"') else ""} \
      ~{true="--lowercase" false="" lowercaseLowercase} \
      ~{outputOutputFile}
  >>>
}