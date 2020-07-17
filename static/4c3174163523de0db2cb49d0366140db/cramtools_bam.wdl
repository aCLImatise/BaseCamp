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
    Boolean? output_bam_file
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
      ~{true="--calculate-md-tag" false="" calculate_md_tag} \
      ~{true="--calculate-nm-tag" false="" calculate_nm_tag} \
      ~{true="--count-only" false="" count_only} \
      ~{true="--decrypt" false="" decrypt} \
      ~{true="--default-quality-score" false="" default_quality_score} \
      ~{true="--filter-flags" false="" filter_flags} \
      ~{true="--ignore-md5-mismatch" false="" ignore_md_five_mismatch} \
      ~{true="--inject-sq-uri" false="" inject_sq_uri} \
      ~{true="--input-cram-file" false="" input_cram_file} \
      ~{true="--output-bam-file" false="" output_bam_file} \
      ~{true="--password" false="" password} \
      ~{true="--print-sam-header" false="" print_sam_header} \
      ~{true="--reference-fasta-file" false="" reference_fast_a_file} \
      ~{true="--required-flags" false="" required_flags} \
      ~{true="--skip-md5-check" false="" skip_md_five_check} \
      ~{true="--sync-bam-output" false="" sync_bam_output} \
      ~{true="--output-bam-format" false="" output_bam_format} \
      ~{true="-H" false="" print_sam_header_quit} \
      ~{true="--log-level" false="" log_level}
  >>>
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
    reference_fast_a_file: "Path to the reference fasta file, it must be uncompressed and indexed (use 'samtools faidx' for example). "
    required_flags: "Required flags.  (default: 0)"
    skip_md_five_check: "Skip MD5 checks when reading the header. (default: false)"
    sync_bam_output: "Write BAM output in the same thread. (default: false)"
    output_bam_format: "Output in BAM format. (default: false)"
    print_sam_header_quit: "Print SAM header and quit. (default: false)"
    log_level: "Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)"
    main_class: ""
  }
}