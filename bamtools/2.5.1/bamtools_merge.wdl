version 1.0

task BamtoolsMerge {
  input {
    String inIn
    File listList
    String outOut
    Boolean forceForceCompression
    String regionRegion
  }
  command <<<
    bamtools merge \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(listList) then ("-list " +  '"' + listList + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-forceCompression" false="" forceForceCompression} \
      ~{if defined(regionRegion) then ("-region " +  '"' + regionRegion + '"') else ""}
  >>>
}