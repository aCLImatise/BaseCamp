version 1.0

task BamtoolsSort {
  input {
    String inIn
    String outOut
    Boolean byByName
    String nN
    String memMem
    String? sortSortOptions
  }
  command <<<
    bamtools sort \
      ~{sortSortOptions} \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-byname" false="" byByName} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(memMem) then ("-mem " +  '"' + memMem + '"') else ""}
  >>>
}