version 1.0

task Apoc {
  input {
    File blockBlock
    String pPVol
    String plenPlen
    Boolean sodSod
    Boolean vV
    String mM
    String lL
    Boolean aA
    Boolean bB
    Boolean cC
    String? pdbfile1Pdbfile1
    String? pdbfile2Pdbfile2
  }
  command <<<
    apoc \
      ~{pdbfile1Pdbfile1} \
      ~{if defined(blockBlock) then ("-block " +  '"' + blockBlock + '"') else ""} \
      ~{if defined(pPVol) then ("-pvol " +  '"' + pPVol + '"') else ""} \
      ~{if defined(plenPlen) then ("-plen " +  '"' + plenPlen + '"') else ""} \
      ~{true="-sod" false="" sodSod} \
      ~{true="-v" false="" vV} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{true="-c" false="" cC} \
      ~{pdbfile2Pdbfile2}
  >>>
}