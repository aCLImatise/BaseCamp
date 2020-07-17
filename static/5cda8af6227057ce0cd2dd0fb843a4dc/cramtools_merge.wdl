version 1.0

task CramtoolsMerge {
  input {
    Boolean? output_file
    Boolean? reference_fast_a_file
    Boolean? region
    Boolean? sam_format
    Boolean? sam_header
    Boolean? log_level
    Boolean? validation_level
    String main_class
  }
  command <<<
    cramtools merge \
      ~{main_class} \
      ~{true="--output-file" false="" output_file} \
      ~{true="--reference-fasta-file" false="" reference_fast_a_file} \
      ~{true="--region" false="" region} \
      ~{true="--sam-format" false="" sam_format} \
      ~{true="--sam-header" false="" sam_header} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--validation-level" false="" validation_level}
  >>>
  parameter_meta {
    output_file: "Path to the output BAM file. Omit for stdout."
    reference_fast_a_file: "Path to the reference fasta file, it must be uncompressed and indexed (use 'samtools faidx' for example)."
    region: "Alignment slice specification, for example: chr1:65000-100000."
    sam_format: "Output in SAM rather than BAM format. (default: false)"
    sam_header: "Print SAM file header when output format is text SAM. (default: false)"
    log_level: "Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)"
    validation_level: "Change validation stringency level: STRICT, LENIENT, SILENT. (default: STRICT)"
    main_class: ""
  }
}