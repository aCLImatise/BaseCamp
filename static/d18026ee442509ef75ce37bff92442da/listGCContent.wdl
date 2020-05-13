version 1.0

task ListGCContent {
  input {
    Boolean sS
    Boolean vV
    Boolean eE
    Boolean rR
    Boolean cC
    File eE
    File iI
    String? listListGcContent
  }
  command <<<
    listGCContent \
      ~{listListGcContent} \
      ~{true="-s" false="" sS} \
      ~{true="-v" false="" vV} \
      ~{true="-e" false="" eE} \
      ~{true="-r" false="" rR} \
      ~{true="-C" false="" cC} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""}
  >>>
}