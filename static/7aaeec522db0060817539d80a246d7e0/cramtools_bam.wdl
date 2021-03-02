version 1.0

task CramtoolsBam {
  input {
    Boolean? calculate_md_tag
    Boolean? calculate_nm_tag
    Boolean? count_only
    Boolean? decrypt
    Boolean? default_quality_score
    Boolean? filter_flags
    Boolean? ignore_md_five_mismatch
    Boolean? inject_sq_uri
    Boolean? input_cram_file
    File? output_bam_file
    Boolean? password
    Boolean? print_sam_header
    Boolean? reference_fast_a_file
    Boolean? required_flags
    Boolean? skip_md_five_check
    Boolean? sync_bam_output
    Boolean? output_bam_format
    Boolean? print_sam_header_quit
    Boolean? log_level
    String main_class
  }
  command <<<
    cramtools bam \
      ~{main_class} \
      ~{if (calculate_md_tag) then "--calculate-md-tag" else ""} \
      ~{if (calculate_nm_tag) then "--calculate-nm-tag" else ""} \
      ~{if (count_only) then "--count-only" else ""} \
      ~{if (decrypt) then "--decrypt" else ""} \
      ~{if (default_quality_score) then "--default-quality-score" else ""} \
      ~{if (filter_flags) then "--filter-flags" else ""} \
      ~{if (ignore_md_five_mismatch) then "--ignore-md5-mismatch" else ""} \
      ~{if (inject_sq_uri) then "--inject-sq-uri" else ""} \
      ~{if (input_cram_file) then "--input-cram-file" else ""} \
      ~{if (output_bam_file) then "--output-bam-file" else ""} \
      ~{if (password) then "--password" else ""} \
      ~{if (print_sam_header) then "--print-sam-header" else ""} \
      ~{if (reference_fast_a_file) then "--reference-fasta-file" else ""} \
      ~{if (required_flags) then "--required-flags" else ""} \
      ~{if (skip_md_five_check) then "--skip-md5-check" else ""} \
      ~{if (sync_bam_output) then "--sync-bam-output" else ""} \
      ~{if (output_bam_format) then "--output-bam-format" else ""} \
      ~{if (print_sam_header_quit) then "-H" else ""} \
      ~{if (log_level) then "--log-level" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    calculate_md_tag: "Calculate MD tag. (default: false)"
    calculate_nm_tag: "Calculate NM tag. (default: false)"
    count_only: "Count number of records. (default: false)"
    decrypt: "Decrypt the file. (default: false)"
    default_quality_score: "Use this quality score (decimal representation of ASCII symbol) as a default value when the original quality score was lost due to compression. Minimum is 33. (default: 63)"
    filter_flags: "Filtering flags.  (default: 0)"
    ignore_md_five_mismatch: "Issue a warning on sequence MD5 mismatch and continue. This does not garantee the data will be read succesfully.  (default: false)"
    inject_sq_uri: "Inject or change the @SQ:UR header fields to point to ENA reference service.  (default: false)"
    input_cram_file: "The path or FTP URL to the CRAM file to uncompress. Omit if standard input (pipe)."
    output_bam_file: "The path to the output BAM file."
    password: "Password to decrypt the file."
    print_sam_header: "Print SAM header when writing SAM format. (default: false)"
    reference_fast_a_file: "Path to the reference fasta file, it must be uncompressed and indexed (use 'samtools faidx' for example)."
    required_flags: "Required flags.  (default: 0)"
    skip_md_five_check: "Skip MD5 checks when reading the header. (default: false)"
    sync_bam_output: "Write BAM output in the same thread. (default: false)"
    output_bam_format: "Output in BAM format. (default: false)"
    print_sam_header_quit: "Print SAM header and quit. (default: false)"
    log_level: "Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)"
    main_class: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_bam_file = "${in_output_bam_file}"
  }
}