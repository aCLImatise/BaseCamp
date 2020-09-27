version 1.0

task CramtoolsCram {
  input {
    Boolean? capture_all_tags
    Boolean? capture_tags
    Boolean? encrypt
    Boolean? ignore_md_five_mismatch
    Boolean? ignore_tags
    Boolean? inject_sq_uri
    Boolean? input_bam_file
    Boolean? input_is_sam
    Boolean? lossless_quality_score
    Boolean? lossy_quality_score_spec
    Boolean? max_records
    File? output_cram_file
    Boolean? preserve_read_names
    Boolean? reference_fast_a_file
    Boolean? log_level
    String main_class
  }
  command <<<
    cramtools cram \
      ~{main_class} \
      ~{if (capture_all_tags) then "--capture-all-tags" else ""} \
      ~{if (capture_tags) then "--capture-tags" else ""} \
      ~{if (encrypt) then "--encrypt" else ""} \
      ~{if (ignore_md_five_mismatch) then "--ignore-md5-mismatch" else ""} \
      ~{if (ignore_tags) then "--ignore-tags" else ""} \
      ~{if (inject_sq_uri) then "--inject-sq-uri" else ""} \
      ~{if (input_bam_file) then "--input-bam-file" else ""} \
      ~{if (input_is_sam) then "--input-is-sam" else ""} \
      ~{if (lossless_quality_score) then "--lossless-quality-score" else ""} \
      ~{if (lossy_quality_score_spec) then "--lossy-quality-score-spec" else ""} \
      ~{if (max_records) then "--max-records" else ""} \
      ~{if (output_cram_file) then "--output-cram-file" else ""} \
      ~{if (preserve_read_names) then "--preserve-read-names" else ""} \
      ~{if (reference_fast_a_file) then "--reference-fasta-file" else ""} \
      ~{if (log_level) then "--log-level" else ""}
  >>>
  parameter_meta {
    capture_all_tags: "Capture all tags. (default: false)"
    capture_tags: "Capture the tags listed, for example 'OQ:XA:XB' (default: )"
    encrypt: "Encrypt the CRAM file. (default: false)"
    ignore_md_five_mismatch: "Fail on MD5 mismatch if true, or correct (overwrite) the checksums and continue if false. (default: false)"
    ignore_tags: "Ignore the tags listed, for example 'OQ:XA:XB' (default: )"
    inject_sq_uri: "Inject or change the @SQ:UR header fields to point to ENA reference service.  (default: false)"
    input_bam_file: "Path to a BAM file to be converted to CRAM. Omit if standard input (pipe)."
    input_is_sam: "Input is in SAM format. (default: false)"
    lossless_quality_score: "Preserve all quality scores. Overwrites '--lossless-quality-score'. (default: false)"
    lossy_quality_score_spec: "A string specifying what quality scores should be preserved. (default: )"
    max_records: "Stop after compressing this many records.  (default: 9223372036854775807)"
    output_cram_file: "The path for the output CRAM file. Omit if standard output (pipe)."
    preserve_read_names: "Preserve all read names. (default: false)"
    reference_fast_a_file: "The reference fasta file, uncompressed and indexed (.fai file, use 'samtools faidx')."
    log_level: "Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)"
    main_class: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_cram_file = "${in_output_cram_file}"
  }
}