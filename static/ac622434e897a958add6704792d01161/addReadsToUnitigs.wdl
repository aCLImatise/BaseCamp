version 1.0

task AddReadsToUnitigs {
  input {
    String gG
    String tT
    String mM
    String mM
    Boolean rR
    Boolean vV
    Boolean vV
    Boolean loadLoadAll
    Boolean nN
  }
  command <<<
    addReadsToUnitigs \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{true="-v" false="" vV} \
      ~{true="-V" false="" vV} \
      ~{true="-loadall" false="" loadLoadAll} \
      ~{true="-n" false="" nN}
  >>>
}