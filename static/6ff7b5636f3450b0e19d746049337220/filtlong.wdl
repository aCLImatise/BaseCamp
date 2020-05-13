version 1.0

task Filtlong {
  input {
    Boolean tT
    Boolean pP
    Boolean minMinLength
    Boolean minMinMeanQ
    Boolean minMinWindowQ
    Boolean lengthLengthWeight
    Boolean meanMeanQWeight
    Boolean windowWindowQWeight
    Boolean trimTrim
    Boolean splitSplit
    Boolean windowWindowSize
    Boolean verboseVerbose
    String? inputInputReads
  }
  command <<<
    filtlong \
      ~{inputInputReads} \
      ~{true="-t" false="" tT} \
      ~{true="-p" false="" pP} \
      ~{true="--min_length" false="" minMinLength} \
      ~{true="--min_mean_q" false="" minMinMeanQ} \
      ~{true="--min_window_q" false="" minMinWindowQ} \
      ~{true="--length_weight" false="" lengthLengthWeight} \
      ~{true="--mean_q_weight" false="" meanMeanQWeight} \
      ~{true="--window_q_weight" false="" windowWindowQWeight} \
      ~{true="--trim" false="" trimTrim} \
      ~{true="--split" false="" splitSplit} \
      ~{true="--window_size" false="" windowWindowSize} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}