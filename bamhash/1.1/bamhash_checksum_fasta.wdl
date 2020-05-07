version 1.0

task BamhashChecksumFasta {
  input {
    Boolean debugDebug
    Boolean noNoReadNames
  }
  command <<<
    bamhash_checksum_fasta \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--no-readnames" false="" noNoReadNames}
  >>>
}