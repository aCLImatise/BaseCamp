version 1.0

task _makenucseq {
  input {
    Boolean codonCodonFile
    Boolean amountAmount
    Boolean lengthLength
  }
  command <<<
    _makenucseq \
      ~{true="-codonfile" false="" codonCodonFile} \
      ~{true="-amount" false="" amountAmount} \
      ~{true="-length" false="" lengthLength}
  >>>
}