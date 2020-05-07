version 1.0

task Bank2contig {
  input {
    Boolean vV
    Boolean eE
    Boolean iI
    File eE
    File iI
    Boolean lL
    Boolean sS
    Boolean sS
    Boolean tT
    String? bank2contigBank2contig
  }
  command <<<
    bank2contig \
      ~{bank2contigBank2contig} \
      ~{true="-v" false="" vV} \
      ~{true="-e" false="" eE} \
      ~{true="-i" false="" iI} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{true="-L" false="" lL} \
      ~{true="-S" false="" sS} \
      ~{true="-s" false="" sS} \
      ~{true="-T" false="" tT}
  >>>
}