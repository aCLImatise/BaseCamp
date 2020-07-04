version 1.0

task CramtoolsGetref {
  input {
    Boolean? destination_file
    Boolean? fast_a_line_length
    Boolean? gzip
    Boolean? ignore_not_found
    Boolean? input_file
    Boolean? log_level
    String main_class
  }
  command <<<
    cramtools getref \
      ~{main_class} \
      ~{true="--destination-file" false="" destination_file} \
      ~{true="--fasta-line-length" false="" fast_a_line_length} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--ignore-not-found" false="" ignore_not_found} \
      ~{true="--input-file" false="" input_file} \
      ~{true="--log-level" false="" log_level}
  >>>
  parameter_meta {
    destination_file: "Destination file."
    fast_a_line_length: "Wrap fasta lines accroding to this value. (default: 80)"
    gzip: "Compress fasta with gzip. (default: false)"
    ignore_not_found: "Don't fail on not found sequences, just issue a warning. (default: false)"
    input_file: "The path to the CRAM or BAM file to extract sequence MD5 checksums."
    log_level: "Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)"
    main_class: ""
  }
}