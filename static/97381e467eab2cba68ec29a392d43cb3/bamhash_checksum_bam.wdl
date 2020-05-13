version 1.0

task BamhashChecksumBam {
  input {
    Boolean debugDebug
    Boolean noNoReadNames
    Boolean noNoQuality
    Boolean noNoPaired
  }
  command <<<
    bamhash_checksum_bam \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--no-readnames" false="" noNoReadNames} \
      ~{true="--no-quality" false="" noNoQuality} \
      ~{true="--no-paired" false="" noNoPaired}
  >>>
}