version 1.0

task BamhashChecksumFastq {
  input {
    Boolean? debug
    Boolean? no_read_names
    Boolean? no_quality
    Boolean? no_paired
  }
  command <<<
    bamhash_checksum_fastq \
      ~{if (debug) then "--debug" else ""} \
      ~{if (no_read_names) then "--no-readnames" else ""} \
      ~{if (no_quality) then "--no-quality" else ""} \
      ~{if (no_paired) then "--no-paired" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "Debug mode. Prints full hex for each read to stdout"
    no_read_names: "Do not use read names as part of checksum"
    no_quality: "Do not use read quality as part of checksum"
    no_paired: "List of fastq files are not paired-end reads"
  }
  output {
    File out_stdout = stdout()
  }
}