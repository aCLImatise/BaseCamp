version 1.0

task Dsrc {
  input {
    Boolean? n_dna_compression
    Boolean? quality_compression_mode
    Boolean? keep_only_fields
    Boolean? n_fastq_input
    Boolean? quality_offset_default
    Boolean? use_illumina_binning
    Boolean? calculate_check_calculation
    Boolean? n_compression_mode
    Boolean? n_processing_threads
    Boolean? use_stdinstdout_readingwriting
    Boolean? verbose_mode_default
    String c_vertical_lined
    File input_filename
    File output_filename
  }
  command <<<
    dsrc \
      ~{c_vertical_lined} \
      ~{input_filename} \
      ~{output_filename} \
      ~{if (n_dna_compression) then "-d" else ""} \
      ~{if (quality_compression_mode) then "-q" else ""} \
      ~{if (keep_only_fields) then "-f" else ""} \
      ~{if (n_fastq_input) then "-b" else ""} \
      ~{if (quality_offset_default) then "-o" else ""} \
      ~{if (use_illumina_binning) then "-l" else ""} \
      ~{if (calculate_check_calculation) then "-c" else ""} \
      ~{if (n_compression_mode) then "-m" else ""} \
      ~{if (n_processing_threads) then "-t" else ""} \
      ~{if (use_stdinstdout_readingwriting) then "-s" else ""} \
      ~{if (verbose_mode_default) then "-v" else ""}
  >>>
  parameter_meta {
    n_dna_compression: "<n>   : DNA compression mode: 0-3, default: 0"
    quality_compression_mode: "<n>   : Quality compression mode: 0-2, default: 0"
    keep_only_fields: "<1,..>: keep only those fields no. in tag field string, default: keep all"
    n_fastq_input: "<n>   : FASTQ input buffer size in MB, default: 8"
    quality_offset_default: "<n>   : Quality offset, default: 0"
    use_illumina_binning: ": use Quality lossy mode (Illumina binning scheme), default: 0"
    calculate_check_calculation: ": calculate and check CRC32 checksum calculation per block, default: 0"
    n_compression_mode: "<n>   : compression mode, where n:\\n* 0    - fast version with decent ratio (-d0 -q0 -b16)\\n* 1    - slower version with better ratio (-d2 -q2 -b64)\\n* 2    - slow version with best ratio (-d3 -q2 -b256)"
    n_processing_threads: "<n>   : processing threads number, default (available h/w threads): 8, max: 64"
    use_stdinstdout_readingwriting: ": use stdin/stdout for reading/writing raw FASTQ data"
    verbose_mode_default: ": verbose mode, default: false"
    c_vertical_lined: ""
    input_filename: ""
    output_filename: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_filename = "${in_output_filename}"
  }
}