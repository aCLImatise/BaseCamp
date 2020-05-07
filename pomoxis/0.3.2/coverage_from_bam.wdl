version 1.0

task CoverageFromBam {
  input {
    Array[String]+ regionsRegions
    String prefixPrefix
    String strideStride
    String? bamBam
  }
  command <<<
    coverage_from_bam \
      ~{bamBam} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(strideStride) then ("--stride " +  '"' + strideStride + '"') else ""}
  >>>
}