version 1.0

task CramtoolsFixheader {
  input {
    Boolean? confirm_md_five
    Boolean? inject_uri
    Boolean? input_cram_file
    Boolean? reference_fast_a_file
    Boolean? uri_pattern
    Boolean? log_level
    String fix_header
  }
  command <<<
    cramtools fixheader \
      ~{fix_header} \
      ~{if (confirm_md_five) then "--confirm-md5" else ""} \
      ~{if (inject_uri) then "--inject-uri" else ""} \
      ~{if (input_cram_file) then "--input-cram-file" else ""} \
      ~{if (reference_fast_a_file) then "--reference-fasta-file" else ""} \
      ~{if (uri_pattern) then "--uri-pattern" else ""} \
      ~{if (log_level) then "--log-level" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    confirm_md_five: "Calculate MD5 for sequences mentioned in the header. Requires --reference-fasta-file option. (default: false)"
    inject_uri: "Inject URI for all reference sequences in the header. (default: false)"
    input_cram_file: "The path to the CRAM file."
    reference_fast_a_file: "Path to the reference fasta file, it must be uncompressed and indexed (use 'samtools faidx' for example)."
    uri_pattern: "String formatting pattern for sequence URI to be injected. (default: http://www.ebi.ac.uk/ena/cram/md5/%s)"
    log_level: "Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)"
    fix_header: ""
  }
  output {
    File out_stdout = stdout()
  }
}