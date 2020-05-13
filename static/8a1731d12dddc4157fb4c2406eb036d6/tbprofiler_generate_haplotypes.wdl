version 1.0

task TbprofilerGenerateHaplotypes.py {
  input {
    String samplesSamples
    String dirDir
    String dbDb
    String variantVariantFormat
    Boolean nonNonDr
  }
  command <<<
    tbprofiler_generate_haplotypes.py \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(variantVariantFormat) then ("--variant-format " +  '"' + variantVariantFormat + '"') else ""} \
      ~{true="--non-dr" false="" nonNonDr}
  >>>
}