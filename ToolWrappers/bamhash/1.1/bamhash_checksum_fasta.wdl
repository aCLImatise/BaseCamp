version 1.0

task BamhashChecksumFasta {
  input {
    Boolean? debug
    Boolean? no_read_names
  }
  command <<<
    bamhash_checksum_fasta \
      ~{if (debug) then "--debug" else ""} \
      ~{if (no_read_names) then "--no-readnames" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "Debug mode. Prints full hex for each read to stdout"
    no_read_names: "Do not use read names as part of checksum"
  }
  output {
    File out_stdout = stdout()
  }
}