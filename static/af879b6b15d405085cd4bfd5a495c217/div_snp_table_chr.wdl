version 1.0

task DivSnpTableChr.py {
  input {
    String maskMask
    String suffixSuffix
    String lensLens
    String? featureFeatureBed
    String? arArBed
    String? snpSnpBed
    String? divDivDirectory
  }
  command <<<
    div_snp_table_chr.py \
      ~{featureFeatureBed} \
      ~{if defined(maskMask) then ("--mask " +  '"' + maskMask + '"') else ""} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""} \
      ~{if defined(lensLens) then ("--lens " +  '"' + lensLens + '"') else ""} \
      ~{arArBed} \
      ~{snpSnpBed} \
      ~{divDivDirectory}
  >>>
}