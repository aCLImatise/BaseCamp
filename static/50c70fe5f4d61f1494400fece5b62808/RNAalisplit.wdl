version 1.0

task RNAalisplit.pl {
  input {
    Boolean alnAln
    Boolean methodMethod
    Boolean noNoRiboSum
    Boolean rsRsCapeStat
    Boolean outOut
  }
  command <<<
    RNAalisplit.pl \
      ~{true="--aln" false="" alnAln} \
      ~{true="--method" false="" methodMethod} \
      ~{true="--noribosum" false="" noNoRiboSum} \
      ~{true="--rscapestat" false="" rsRsCapeStat} \
      ~{true="--out" false="" outOut}
  >>>
}