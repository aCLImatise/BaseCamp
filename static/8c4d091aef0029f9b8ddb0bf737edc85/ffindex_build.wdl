version 1.0

task FfindexBuild {
  input {
    Boolean aA
    String dD
    String iI
    File fF
    Boolean sS
    Boolean vV
  }
  command <<<
    ffindex_build \
      ~{true="-a" false="" aA} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-v" false="" vV}
  >>>
}