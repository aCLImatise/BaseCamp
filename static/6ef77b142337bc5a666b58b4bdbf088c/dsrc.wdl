version 1.0

task Dsrc {
  input {
    Boolean? dna_compression_mode
    Boolean? quality_compression_mode
    Boolean? keep_only_fields
    Boolean? fastq_input_buffer
    Boolean? quality_offset_default
    Boolean? use_quality_mode
    Boolean? calculate_check_calculation
    Boolean? compression_mode_version
    Boolean? processing_threads_number
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
      ~{if (dna_compression_mode) then "-d" else ""} \
      ~{if (quality_compression_mode) then "-q" else ""} \
      ~{if (keep_only_fields) then "-f" else ""} \
      ~{if (fastq_input_buffer) then "-b" else ""} \
      ~{if (quality_offset_default) then "-o" else ""} \
      ~{if (use_quality_mode) then "-l" else ""} \
      ~{if (calculate_check_calculation) then "-c" else ""} \
      ~{if (compression_mode_version) then "-m" else ""} \
      ~{if (processing_threads_number) then "-t" else ""} \
      ~{if (use_stdinstdout_readingwriting) then "-s" else ""} \
      ~{if (verbose_mode_default) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dna_compression_mode: "<n>   : DNA compression mode: 0-3, default: 0"
    quality_compression_mode: "<n>   : Quality compression mode: 0-2, default: 0"
    keep_only_fields: "<1,..>: keep only those fields no. in tag field string, default: keep all"
    fastq_input_buffer: "<n>   : FASTQ input buffer size in MB, default: 8"
    quality_offset_default: "<n>   : Quality offset, default: 0"
    use_quality_mode: ": use Quality lossy mode (Illumina binning scheme), default: 0"
    calculate_check_calculation: ": calculate and check CRC32 checksum calculation per block, default: 0"
    compression_mode_version: "<n>   : compression mode, where n:\\n* 0    - fast version with decent ratio (-d0 -q0 -b16)\\n* 1    - slower version with better ratio (-d2 -q2 -b64)\\n* 2    - slow version with best ratio (-d3 -q2 -b256)"
    processing_threads_number: "<n>   : processing threads number, default (available h/w threads): 8, max: 64"
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