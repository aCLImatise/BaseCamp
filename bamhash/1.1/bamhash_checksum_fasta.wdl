version 1.0

task BamhashChecksumFasta {
  input {
    Boolean? debug
    Boolean? no_read_names
  }
  command <<<
    bamhash_checksum_fasta \
      ~{true="--debug" false="" debug} \
      ~{true="--no-readnames" false="" no_read_names}
  >>>
  parameter_meta {
    debug: "Debug mode. Prints full hex for each read to stdout"
    no_read_names: "Do not use read names as part of checksum"
  }
}