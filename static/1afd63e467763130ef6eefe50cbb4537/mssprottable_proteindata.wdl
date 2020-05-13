version 1.0

task MssprottableProteindata {
  input {
    String iI
    String dD
    String oO
    String setnameSetname
    String geneGeneCentric
    String dbfileDbfile
  }
  command <<<
    mssprottable proteindata \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(setnameSetname) then ("--setname " +  '"' + setnameSetname + '"') else ""} \
      ~{if defined(geneGeneCentric) then ("--genecentric " +  '"' + geneGeneCentric + '"') else ""} \
      ~{if defined(dbfileDbfile) then ("--dbfile " +  '"' + dbfileDbfile + '"') else ""}
  >>>
}