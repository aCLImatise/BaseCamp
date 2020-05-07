version 1.0

task Makenucseq {
  input {
    Boolean codonCodonFile
    Boolean amountAmount
    Boolean lengthLength
  }
  command <<<
    makenucseq \
      ~{true="-codonfile" false="" codonCodonFile} \
      ~{true="-amount" false="" amountAmount} \
      ~{true="-length" false="" lengthLength}
  >>>
}