version 1.0

task Msistats {
  input {
    Boolean mM
    Boolean tT
    Boolean oO
    Boolean vV
    String pmPmZ
    String pPTime
    File? filenameFilename
  }
  command <<<
    msistats \
      ~{filenameFilename} \
      ~{true="-m" false="" mM} \
      ~{true="-t" false="" tT} \
      ~{true="-o" false="" oO} \
      ~{true="-v" false="" vV} \
      ~{if defined(pmPmZ) then ("--pmz " +  '"' + pmPmZ + '"') else ""} \
      ~{if defined(pPTime) then ("--ptime " +  '"' + pPTime + '"') else ""}
  >>>
}