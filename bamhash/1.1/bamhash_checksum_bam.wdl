version 1.0

task BamhashChecksumBam {
  input {
    Boolean? debug
    Boolean? no_read_names
    Boolean? no_quality
    Boolean? no_paired
  }
  command <<<
    bamhash_checksum_bam \
      ~{true="--debug" false="" debug} \
      ~{true="--no-readnames" false="" no_read_names} \
      ~{true="--no-quality" false="" no_quality} \
      ~{true="--no-paired" false="" no_paired}
  >>>
  parameter_meta {
    debug: "Debug mode. Prints full hex for each read to stdout"
    no_read_names: "Do not use read names as part of checksum"
    no_quality: "Do not use read quality as part of checksum"
    no_paired: "Bam files were not generated with paired-end reads"
  }
}