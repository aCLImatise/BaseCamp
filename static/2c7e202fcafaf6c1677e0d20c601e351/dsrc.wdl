version 1.0

task Dsrc {
  input {
    Boolean? dna_compression_mode
    Boolean? quality_compression_mode
    Boolean? keep_only_fields
    Boolean? fastq_input_buffer
    Boolean? quality_offset_default
    Boolean? use_mode_default
    Boolean? calculate_check_calculation
    Boolean? processing_threads_number
    Boolean? use_stdinstdout_readingwriting
    Boolean? verbose_mode_default
    String c_vertical_lined
    String input_filename
    String output_filename
  }
  command <<<
    dsrc \
      ~{c_vertical_lined} \
      ~{input_filename} \
      ~{output_filename} \
      ~{true="-d" false="" dna_compression_mode} \
      ~{true="-q" false="" quality_compression_mode} \
      ~{true="-f" false="" keep_only_fields} \
      ~{true="-b" false="" fastq_input_buffer} \
      ~{true="-o" false="" quality_offset_default} \
      ~{true="-l" false="" use_mode_default} \
      ~{true="-c" false="" calculate_check_calculation} \
      ~{true="-t" false="" processing_threads_number} \
      ~{true="-s" false="" use_stdinstdout_readingwriting} \
      ~{true="-v" false="" verbose_mode_default}
  >>>
  parameter_meta {
    dna_compression_mode: "<n>   : DNA compression mode: 0-3, default: 0"
    quality_compression_mode: "<n>   : Quality compression mode: 0-2, default: 0"
    keep_only_fields: "<1,..>: keep only those fields no. in tag field string, default: keep all"
    fastq_input_buffer: "<n>   : FASTQ input buffer size in MB, default: 8"
    quality_offset_default: "<n>   : Quality offset, default: 0"
    use_mode_default: ": use Quality lossy mode (Illumina binning scheme), default: 0"
    calculate_check_calculation: ": calculate and check CRC32 checksum calculation per block, default: 0"
    processing_threads_number: "<n>   : processing threads number, default (available h/w threads): 8, max: 64"
    use_stdinstdout_readingwriting: ": use stdin/stdout for reading/writing raw FASTQ data"
    verbose_mode_default: ": verbose mode, default: false"
    c_vertical_lined: ""
    input_filename: ""
    output_filename: ""
  }
}