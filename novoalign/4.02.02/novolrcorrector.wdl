version 1.0

task Novolrcorrector {
  input {
    String inIn
    File outOut
    String regionRegion
    String fastFastA
    Boolean useUse
    String atAtLeast
    String atAtMost
    String minMinCover
    String seSePenalty
    Boolean fullFullLr
    Boolean svSvSplit
    Boolean uncorrectedUncorrectedLr
    Boolean fqFq
    String baseBaseQ
    String? novoNovoCraft
    String? longLong
    String? readRead
    String? correctCorrectOr
    String? formatFormatSpecific
  }
  command <<<
    novolrcorrector \
      ~{novoNovoCraft} \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(regionRegion) then ("-region " +  '"' + regionRegion + '"') else ""} \
      ~{if defined(fastFastA) then ("-fasta " +  '"' + fastFastA + '"') else ""} \
      ~{true="-use" false="" useUse} \
      ~{if defined(atAtLeast) then ("-atLeast " +  '"' + atAtLeast + '"') else ""} \
      ~{if defined(atAtMost) then ("-atMost " +  '"' + atAtMost + '"') else ""} \
      ~{if defined(minMinCover) then ("-minCover " +  '"' + minMinCover + '"') else ""} \
      ~{if defined(seSePenalty) then ("-sePenalty " +  '"' + seSePenalty + '"') else ""} \
      ~{true="-fullLR" false="" fullFullLr} \
      ~{true="-SVSplit" false="" svSvSplit} \
      ~{true="-uncorrectedLR" false="" uncorrectedUncorrectedLr} \
      ~{true="-fq" false="" fqFq} \
      ~{if defined(baseBaseQ) then ("-baseq " +  '"' + baseBaseQ + '"') else ""} \
      ~{longLong} \
      ~{readRead} \
      ~{correctCorrectOr} \
      ~{formatFormatSpecific}
  >>>
}