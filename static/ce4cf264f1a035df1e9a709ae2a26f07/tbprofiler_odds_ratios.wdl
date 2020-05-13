version 1.0

task TbprofilerOddsRatios.py {
  input {
    String samplesSamples
    String dirDir
    String dbDb
    String variantVariantFormat
    String? metaMeta
  }
  command <<<
    tbprofiler_odds_ratios.py \
      ~{metaMeta} \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(variantVariantFormat) then ("--variant-format " +  '"' + variantVariantFormat + '"') else ""}
  >>>
}