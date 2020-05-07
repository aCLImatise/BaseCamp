version 1.0

task Phasedstacks {
  input {
    Boolean skipSkipZeros
    Boolean minorMinorAlleleFreq
    Boolean minMinInformPairs
  }
  command <<<
    phasedstacks \
      ~{true="--skip-zeros" false="" skipSkipZeros} \
      ~{true="--minor-allele-freq" false="" minorMinorAlleleFreq} \
      ~{true="--min-inform-pairs" false="" minMinInformPairs}
  >>>
}