version 1.0

task Dumpreads {
  input {
    Boolean fF
    Int qQ
    Boolean qQ
    Boolean eE
    Boolean rR
    Boolean cC
    File eE
    File iI
    String lL
    String mM
    String mM
    Boolean sS
    Boolean vV
    String? dumpDumpReads
  }
  command <<<
    dumpreads \
      ~{dumpDumpReads} \
      ~{true="-f" false="" fF} \
      ~{if defined(qQ) then ("-Q " +  '"' + qQ + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{true="-e" false="" eE} \
      ~{true="-r" false="" rR} \
      ~{true="-c" false="" cC} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-v" false="" vV}
  >>>
}