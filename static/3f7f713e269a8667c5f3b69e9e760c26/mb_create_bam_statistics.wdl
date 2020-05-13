version 1.0

task MbCreateBamStatistics {
  input {
    String gffGffFile
    String? estimateEstimateBamStatistics
    String? bamBamFile
    String? outputOutputJson
  }
  command <<<
    mb-create-bam-statistics \
      ~{estimateEstimateBamStatistics} \
      ~{if defined(gffGffFile) then ("--gff_file " +  '"' + gffGffFile + '"') else ""} \
      ~{bamBamFile} \
      ~{outputOutputJson}
  >>>
}