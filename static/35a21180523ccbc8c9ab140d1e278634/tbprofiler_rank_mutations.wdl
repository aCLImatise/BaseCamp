version 1.0

task TbprofilerRankMutations.py {
  input {
    String samplesSamples
    String dirDir
    String dbDb
    String variantVariantFormat
    Boolean nonNonDr
  }
  command <<<
    tbprofiler_rank_mutations.py \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(variantVariantFormat) then ("--variant-format " +  '"' + variantVariantFormat + '"') else ""} \
      ~{true="--non-dr" false="" nonNonDr}
  >>>
}