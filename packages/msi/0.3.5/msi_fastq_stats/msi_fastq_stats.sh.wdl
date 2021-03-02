version 1.0

task MsiFastqStatssh {
  input {
    Boolean? reads_two_fastq
    Boolean? fail_empty_files
    Boolean? fail_encoding_determined
    Boolean? skip_check_duplicated
    String fast_q_info
    Int fast_q_one
    Int? fast_q_two
    File? file_vertical_line_pe
  }
  command <<<
    msi_fastq_stats_sh \
      ~{fast_q_info} \
      ~{fast_q_one} \
      ~{fast_q_two} \
      ~{file_vertical_line_pe} \
      ~{if (reads_two_fastq) then "-s" else ""} \
      ~{if (fail_empty_files) then "-e" else ""} \
      ~{if (fail_encoding_determined) then "-q" else ""} \
      ~{if (skip_check_duplicated) then "-r" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/msi:0.3.5--1"
  }
  parameter_meta {
    reads_two_fastq: ": the reads in the two fastq files have the same ordering"
    fail_empty_files: ": do not fail with empty files"
    fail_encoding_determined: ": do not fail if quality encoding cannot be determined"
    skip_check_duplicated: ": skip check for duplicated readnames"
    fast_q_info: ""
    fast_q_one: ""
    fast_q_two: ""
    file_vertical_line_pe: ""
  }
  output {
    File out_stdout = stdout()
  }
}