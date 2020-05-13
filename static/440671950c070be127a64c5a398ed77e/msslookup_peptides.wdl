version 1.0

task MsslookupPeptides {
  input {
    Array[String]+ iI
    String dbfileDbfile
    Boolean geneGeneCentric
    Array[String]+ setSetNames
    String isIsObQuantColPattern
    String psmPsmNrColPattern
    String ms1quantcolMs1quantcolPattern
    String fdrFdrColPattern
    String pepPepColPattern
    String peptidePeptideCol
  }
  command <<<
    msslookup peptides \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dbfileDbfile) then ("--dbfile " +  '"' + dbfileDbfile + '"') else ""} \
      ~{true="--genecentric" false="" geneGeneCentric} \
      ~{if defined(setSetNames) then ("--setnames " +  '"' + setSetNames + '"') else ""} \
      ~{if defined(isIsObQuantColPattern) then ("--isobquantcolpattern " +  '"' + isIsObQuantColPattern + '"') else ""} \
      ~{if defined(psmPsmNrColPattern) then ("--psmnrcolpattern " +  '"' + psmPsmNrColPattern + '"') else ""} \
      ~{if defined(ms1quantcolMs1quantcolPattern) then ("--ms1quantcolpattern " +  '"' + ms1quantcolMs1quantcolPattern + '"') else ""} \
      ~{if defined(fdrFdrColPattern) then ("--fdrcolpattern " +  '"' + fdrFdrColPattern + '"') else ""} \
      ~{if defined(pepPepColPattern) then ("--pepcolpattern " +  '"' + pepPepColPattern + '"') else ""} \
      ~{if defined(peptidePeptideCol) then ("--peptidecol " +  '"' + peptidePeptideCol + '"') else ""}
  >>>
}