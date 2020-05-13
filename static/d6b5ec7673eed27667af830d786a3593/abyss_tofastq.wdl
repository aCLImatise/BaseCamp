version 1.0

task AbyssTofastq {
  input {
    Boolean catCat
    Boolean interleaveInterleave
    Boolean fastFastQ
    Boolean fastFastA
    Boolean bxBx
    Boolean chastityChastity
    Boolean noNoChastity
    Boolean trimTrimMasked
    Boolean noNoTrimMasked
    String trimTrimQuality
    Boolean standardStandardQuality
    Boolean illuminaIlluminaQuality
    Boolean verboseVerbose
  }
  command <<<
    abyss-tofastq \
      ~{true="--cat" false="" catCat} \
      ~{true="--interleave" false="" interleaveInterleave} \
      ~{true="--fastq" false="" fastFastQ} \
      ~{true="--fasta" false="" fastFastA} \
      ~{true="--bx" false="" bxBx} \
      ~{true="--chastity" false="" chastityChastity} \
      ~{true="--no-chastity" false="" noNoChastity} \
      ~{true="--trim-masked" false="" trimTrimMasked} \
      ~{true="--no-trim-masked" false="" noNoTrimMasked} \
      ~{if defined(trimTrimQuality) then ("--trim-quality " +  '"' + trimTrimQuality + '"') else ""} \
      ~{true="--standard-quality" false="" standardStandardQuality} \
      ~{true="--illumina-quality" false="" illuminaIlluminaQuality} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}