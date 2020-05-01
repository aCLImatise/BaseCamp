version 1.0

task Novolrpolish {
  input {
    String inIn
    Boolean lbLbShort
    Boolean lbLbLong
    File outOut
    String regionRegion
    String fastFastA
    Boolean fqFq
    String baseBaseQ
    String minMinQ
    String minMinMapq
    String? novoNovoCraft
    String? longLong
    String? readRead
    String? polisherPolisher
    String? formatFormatSpecific
  }
  command <<<
    novolrpolish \
      ~{novoNovoCraft} \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{true="-LBShort" false="" lbLbShort} \
      ~{true="-LBLong" false="" lbLbLong} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(regionRegion) then ("-region " +  '"' + regionRegion + '"') else ""} \
      ~{if defined(fastFastA) then ("-fasta " +  '"' + fastFastA + '"') else ""} \
      ~{true="-fq" false="" fqFq} \
      ~{if defined(baseBaseQ) then ("-baseq " +  '"' + baseBaseQ + '"') else ""} \
      ~{if defined(minMinQ) then ("-minq " +  '"' + minMinQ + '"') else ""} \
      ~{if defined(minMinMapq) then ("-minMAPQ " +  '"' + minMinMapq + '"') else ""} \
      ~{longLong} \
      ~{readRead} \
      ~{polisherPolisher} \
      ~{formatFormatSpecific}
  >>>
}