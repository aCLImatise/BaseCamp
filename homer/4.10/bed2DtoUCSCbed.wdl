version 1.0

task Bed2DtoUCSCbed.pl {
  input {
    Boolean ucscUcsc
    Boolean peaksPeaks
    Boolean interactionsInteractions
    Boolean endsEnds
  }
  command <<<
    bed2DtoUCSCbed.pl \
      ~{true="-ucsc" false="" ucscUcsc} \
      ~{true="-peaks" false="" peaksPeaks} \
      ~{true="-interactions" false="" interactionsInteractions} \
      ~{true="-ends" false="" endsEnds}
  >>>
}