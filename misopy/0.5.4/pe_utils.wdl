version 1.0

task PeUtils {
  input {
    String computeComputeInsertLen
    Boolean noNoBamFilter
    Int minMinExonSize
    String sdSdMax
    String outputOutputDir
  }
  command <<<
    pe_utils \
      ~{if defined(computeComputeInsertLen) then ("--compute-insert-len " +  '"' + computeComputeInsertLen + '"') else ""} \
      ~{true="--no-bam-filter" false="" noNoBamFilter} \
      ~{if defined(minMinExonSize) then ("--min-exon-size " +  '"' + minMinExonSize + '"') else ""} \
      ~{if defined(sdSdMax) then ("--sd-max " +  '"' + sdSdMax + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}