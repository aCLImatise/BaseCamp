version 1.0

task CramtoolsFastq {
  input {
    Boolean? default_quality_score
    Boolean? enumerate
    File? fast_q_base_name
    Boolean? gzip
    Boolean? ignore_md_five_mismatch
    Boolean? input_cram_file
    Boolean? max_records
    Boolean? read_name_prefix
    Boolean? reference_fast_a_file
    Boolean? reverse
    Boolean? skip_md_five_check
    Boolean? log_level
    String main_class
  }
  command <<<
    cramtools fastq \
      ~{main_class} \
      ~{if (default_quality_score) then "--default-quality-score" else ""} \
      ~{if (enumerate) then "--enumerate" else ""} \
      ~{if (fast_q_base_name) then "--fastq-base-name" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (ignore_md_five_mismatch) then "--ignore-md5-mismatch" else ""} \
      ~{if (input_cram_file) then "--input-cram-file" else ""} \
      ~{if (max_records) then "--max-records" else ""} \
      ~{if (read_name_prefix) then "--read-name-prefix" else ""} \
      ~{if (reference_fast_a_file) then "--reference-fasta-file" else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (skip_md_five_check) then "--skip-md5-check" else ""} \
      ~{if (log_level) then "--log-level" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    default_quality_score: "Use this quality score (decimal representation of ASCII symbol) as a default value when the original quality score was lost due to compression. Minimum is 33. (default: 63)"
    enumerate: "Append read names with read index (/1 for first in pair, /2 for second in pair). (default: false)"
    fast_q_base_name: "'_number.fastq[.gz] will be appended to this string to obtain output fastq file name. If this parameter is omitted then all reads are printed with no garanteed order."
    gzip: "Compress fastq files with gzip. (default: false)"
    ignore_md_five_mismatch: "Issue a warning on sequence MD5 mismatch and continue. This does not garantee the data will be read succesfully.  (default: false)"
    input_cram_file: "The path to the CRAM file to uncompress. Omit if standard input (pipe)."
    max_records: "Stop after reading this many records. (default: -1)"
    read_name_prefix: "Replace read names with this prefix and a sequential integer."
    reference_fast_a_file: "Path to the reference fasta file, it must be uncompressed and indexed (use 'samtools faidx' for example)."
    reverse: "Re-reverse reads mapped to negative strand. (default: false)"
    skip_md_five_check: "Skip MD5 checks when reading the header. (default: false)"
    log_level: "Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)"
    main_class: ""
  }
  output {
    File out_stdout = stdout()
    File out_fast_q_base_name = "${in_fast_q_base_name}"
  }
}