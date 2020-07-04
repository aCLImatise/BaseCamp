version 1.0

task CramtoolsFastq {
  input {
    Boolean? default_quality_score
    Boolean? enumerate
    Boolean? fast_q_base_name
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
      ~{true="--default-quality-score" false="" default_quality_score} \
      ~{true="--enumerate" false="" enumerate} \
      ~{true="--fastq-base-name" false="" fast_q_base_name} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--ignore-md5-mismatch" false="" ignore_md_five_mismatch} \
      ~{true="--input-cram-file" false="" input_cram_file} \
      ~{true="--max-records" false="" max_records} \
      ~{true="--read-name-prefix" false="" read_name_prefix} \
      ~{true="--reference-fasta-file" false="" reference_fast_a_file} \
      ~{true="--reverse" false="" reverse} \
      ~{true="--skip-md5-check" false="" skip_md_five_check} \
      ~{true="--log-level" false="" log_level}
  >>>
  parameter_meta {
    default_quality_score: "Use this quality score (decimal representation of ASCII symbol) as a default value when the original quality score was lost due to compression. Minimum is 33. (default: 63)"
    enumerate: "Append read names with read index (/1 for first in pair, /2 for second in pair). (default: false)"
    fast_q_base_name: "'_number.fastq[.gz] will be appended to this string to obtain output fastq file name. If this parameter is omitted then all reads are printed with no garanteed order."
    gzip: "Compress fastq files with gzip. (default: false)"
    ignore_md_five_mismatch: "Issue a warning on sequence MD5 mismatch and continue. This does not garantee the data will be read succesfully.  (default: false)"
    input_cram_file: "The path to the CRAM file to uncompress. Omit if standard input (pipe)."
    max_records: "Stop after reading this many records. (default: -1)"
    read_name_prefix: "Replace read names with this prefix and a sequential integer."
    reference_fast_a_file: "Path to the reference fasta file, it must be uncompressed and indexed (use 'samtools faidx' for example). "
    reverse: "Re-reverse reads mapped to negative strand. (default: false)"
    skip_md_five_check: "Skip MD5 checks when reading the header. (default: false)"
    log_level: "Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)"
    main_class: ""
  }
}