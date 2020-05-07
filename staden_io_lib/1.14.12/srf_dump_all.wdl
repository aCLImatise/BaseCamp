version 1.0

task SrfDumpAll {
  input {
    String cC
    String dD
    String fF
    Boolean nN
    Boolean oO
    String tT
    Boolean vV
    String? archiveArchiveName
  }
  command <<<
    srf_dump_all \
      ~{archiveArchiveName} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-n" false="" nN} \
      ~{true="-o" false="" oO} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}