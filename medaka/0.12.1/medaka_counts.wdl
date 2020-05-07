version 1.0

task MedakaCounts {
  input {
    Boolean printPrint
    Array[String]+ dDTypes
    Array[String]+ normNorm
    String? bamBam
    String? regionRegion
  }
  command <<<
    medaka_counts \
      ~{bamBam} \
      ~{true="--print" false="" printPrint} \
      ~{if defined(dDTypes) then ("--dtypes " +  '"' + dDTypes + '"') else ""} \
      ~{if defined(normNorm) then ("--norm " +  '"' + normNorm + '"') else ""} \
      ~{regionRegion}
  >>>
}