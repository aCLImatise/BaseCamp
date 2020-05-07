version 1.0

task _makeprotseq {
  input {
    Boolean pepPepStatsFile
    Boolean amountAmount
    Boolean lengthLength
  }
  command <<<
    _makeprotseq \
      ~{true="-pepstatsfile" false="" pepPepStatsFile} \
      ~{true="-amount" false="" amountAmount} \
      ~{true="-length" false="" lengthLength}
  >>>
}