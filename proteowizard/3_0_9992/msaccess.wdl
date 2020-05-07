version 1.0

task Msaccess {
  input {
    Boolean fF
    Boolean oO
    Boolean cC
    Boolean xX
    String filterFilter
    Boolean vV
    File? filenamesFilenames
  }
  command <<<
    msaccess \
      ~{filenamesFilenames} \
      ~{true="-f" false="" fF} \
      ~{true="-o" false="" oO} \
      ~{true="-c" false="" cC} \
      ~{true="-x" false="" xX} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}