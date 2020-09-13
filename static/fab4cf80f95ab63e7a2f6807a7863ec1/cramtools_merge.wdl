version 1.0

task CramtoolsMerge {
  input {
    File? output_file
    Boolean? reference_fast_a_file
    Boolean? region
    Boolean? sam_format
    File? sam_header
    Boolean? log_level
    Boolean? validation_level
    String main_class
  }
  command <<<
    cramtools merge \
      ~{main_class} \
      ~{if (output_file) then "--output-file" else ""} \
      ~{if (reference_fast_a_file) then "--reference-fasta-file" else ""} \
      ~{if (region) then "--region" else ""} \
      ~{if (sam_format) then "--sam-format" else ""} \
      ~{if (sam_header) then "--sam-header" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (validation_level) then "--validation-level" else ""}
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
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_sam_header = "${in_sam_header}"
  }
}