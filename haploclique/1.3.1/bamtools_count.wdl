version 1.0

task BamtoolsCount {
  input {
    String inIn
    File listList
    String regionRegion
  }
  command <<<
    bamtools count \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(listList) then ("-list " +  '"' + listList + '"') else ""} \
      ~{if defined(regionRegion) then ("-region " +  '"' + regionRegion + '"') else ""}
  >>>
}