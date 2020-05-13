version 1.0

task BamtoolsRandom {
  input {
    String inIn
    File listList
    String outOut
    String regionRegion
    Boolean forceForceCompression
    String nN
    String seedSeed
  }
  command <<<
    bamtools random \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(listList) then ("-list " +  '"' + listList + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(regionRegion) then ("-region " +  '"' + regionRegion + '"') else ""} \
      ~{true="-forceCompression" false="" forceForceCompression} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(seedSeed) then ("-seed " +  '"' + seedSeed + '"') else ""}
  >>>
}