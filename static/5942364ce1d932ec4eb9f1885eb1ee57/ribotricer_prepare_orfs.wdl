version 1.0

task RibotricerPrepareOrfs {
  input {
    String gtfGtf
    String fastFastA
    String prefixPrefix
    Int minMinOrfLength
    String startStartCodons
    String stopStopCodons
    Boolean longestLongest
  }
  command <<<
    ribotricer prepare-orfs \
      ~{if defined(gtfGtf) then ("--gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(minMinOrfLength) then ("--min_orf_length " +  '"' + minMinOrfLength + '"') else ""} \
      ~{if defined(startStartCodons) then ("--start_codons " +  '"' + startStartCodons + '"') else ""} \
      ~{if defined(stopStopCodons) then ("--stop_codons " +  '"' + stopStopCodons + '"') else ""} \
      ~{true="--longest" false="" longestLongest}
  >>>
}