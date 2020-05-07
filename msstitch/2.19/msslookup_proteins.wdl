version 1.0

task MsslookupProteins {
  input {
    Array[String]+ iI
    String dbfileDbfile
    String geneGeneCentric
    Array[String]+ setSetNames
    String isIsObQuantColPattern
    String psmPsmNrColPattern
    String ms1quantcolMs1quantcolPattern
    String probProbColPattern
    String fdrFdrColPattern
    String pepPepColPattern
    String protProtCol
  }
  command <<<
    msslookup proteins \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dbfileDbfile) then ("--dbfile " +  '"' + dbfileDbfile + '"') else ""} \
      ~{if defined(geneGeneCentric) then ("--genecentric " +  '"' + geneGeneCentric + '"') else ""} \
      ~{if defined(setSetNames) then ("--setnames " +  '"' + setSetNames + '"') else ""} \
      ~{if defined(isIsObQuantColPattern) then ("--isobquantcolpattern " +  '"' + isIsObQuantColPattern + '"') else ""} \
      ~{if defined(psmPsmNrColPattern) then ("--psmnrcolpattern " +  '"' + psmPsmNrColPattern + '"') else ""} \
      ~{if defined(ms1quantcolMs1quantcolPattern) then ("--ms1quantcolpattern " +  '"' + ms1quantcolMs1quantcolPattern + '"') else ""} \
      ~{if defined(probProbColPattern) then ("--probcolpattern " +  '"' + probProbColPattern + '"') else ""} \
      ~{if defined(fdrFdrColPattern) then ("--fdrcolpattern " +  '"' + fdrFdrColPattern + '"') else ""} \
      ~{if defined(pepPepColPattern) then ("--pepcolpattern " +  '"' + pepPepColPattern + '"') else ""} \
      ~{if defined(protProtCol) then ("--protcol " +  '"' + protProtCol + '"') else ""}
  >>>
}