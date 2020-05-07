version 1.0

task BlibSearch {
  input {
    Boolean cC
    String topTopPeaksForSearch
    Boolean wW
    Boolean nN
    Boolean lL
    Boolean hH
    Boolean mM
    String psmPsmResultFile
    Boolean rR
    Boolean preservePreserveOrder
    Boolean pP
    Boolean vV
  }
  command <<<
    BlibSearch \
      ~{true="-c" false="" cC} \
      ~{if defined(topTopPeaksForSearch) then ("--topPeaksForSearch " +  '"' + topTopPeaksForSearch + '"') else ""} \
      ~{true="-w" false="" wW} \
      ~{true="-n" false="" nN} \
      ~{true="-L" false="" lL} \
      ~{true="-H" false="" hH} \
      ~{true="-m" false="" mM} \
      ~{if defined(psmPsmResultFile) then ("--psm-result-file " +  '"' + psmPsmResultFile + '"') else ""} \
      ~{true="-R" false="" rR} \
      ~{true="--preserve-order" false="" preservePreserveOrder} \
      ~{true="-p" false="" pP} \
      ~{true="-v" false="" vV}
  >>>
}