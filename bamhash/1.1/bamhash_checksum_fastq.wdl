version 1.0

task BamhashChecksumFastq {
  input {
    Boolean debugDebug
    Boolean noNoReadNames
    Boolean noNoQuality
    Boolean noNoPaired
  }
  command <<<
    bamhash_checksum_fastq \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--no-readnames" false="" noNoReadNames} \
      ~{true="--no-quality" false="" noNoQuality} \
      ~{true="--no-paired" false="" noNoPaired}
  >>>
}