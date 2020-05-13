version 1.0

task Makeprotseq {
  input {
    Boolean pepPepStatsFile
    Boolean amountAmount
    Boolean lengthLength
  }
  command <<<
    makeprotseq \
      ~{true="-pepstatsfile" false="" pepPepStatsFile} \
      ~{true="-amount" false="" amountAmount} \
      ~{true="-length" false="" lengthLength}
  >>>
}