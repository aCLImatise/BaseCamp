version 1.0

task GaasFastqPairfqLite.pl {
  input {
    Boolean inInFile
    Boolean outfileOutfile
    Boolean forwardForward
    Boolean reverseReverse
    Boolean forForWPaired
    Boolean revRevPaired
    Boolean forForWUnpaired
    Boolean revRevUnpaired
    Boolean pairPairNum
    Boolean uppercaseUppercase
    Boolean statsStats
  }
  command <<<
    gaas_fastq_pairfq_lite.pl \
      ~{true="--infile" false="" inInFile} \
      ~{true="--outfile" false="" outfileOutfile} \
      ~{true="--forward" false="" forwardForward} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{true="--forw_paired" false="" forForWPaired} \
      ~{true="--rev_paired" false="" revRevPaired} \
      ~{true="--forw_unpaired" false="" forForWUnpaired} \
      ~{true="--rev_unpaired" false="" revRevUnpaired} \
      ~{true="--pairnum" false="" pairPairNum} \
      ~{true="--uppercase" false="" uppercaseUppercase} \
      ~{true="--stats" false="" statsStats}
  >>>
}