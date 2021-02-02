version 1.0

task Nanoplexer {
  input {
    Boolean? file_barcode_file
    Boolean? file_dual_barcode
    File? char_output_path
    File? file_output_log
    Boolean? char_mode_fastq
    Boolean? num_batch_size
    Boolean? int_number_threads
    Boolean? int_target_length
    Boolean? int_match_score
    Boolean? int_mismatch_score
    Boolean? int_gap_open
    Boolean? int_gap_extension
    Boolean? int_minimal_alignment
    Boolean? ignore_parameter_estimation
    Boolean? show_version_number
    String input_dot_fast_q
  }
  command <<<
    nanoplexer \
      ~{input_dot_fast_q} \
      ~{if (file_barcode_file) then "-b" else ""} \
      ~{if (file_dual_barcode) then "-d" else ""} \
      ~{if (char_output_path) then "-p" else ""} \
      ~{if (file_output_log) then "-l" else ""} \
      ~{if (char_mode_fastq) then "-M" else ""} \
      ~{if (num_batch_size) then "-B" else ""} \
      ~{if (int_number_threads) then "-t" else ""} \
      ~{if (int_target_length) then "-L" else ""} \
      ~{if (int_match_score) then "-m" else ""} \
      ~{if (int_mismatch_score) then "-x" else ""} \
      ~{if (int_gap_open) then "-o" else ""} \
      ~{if (int_gap_extension) then "-e" else ""} \
      ~{if (int_minimal_alignment) then "-s" else ""} \
      ~{if (ignore_parameter_estimation) then "-i" else ""} \
      ~{if (show_version_number) then "-v" else ""}
  >>>
  parameter_meta {
    file_barcode_file: "FILE    barcode file"
    file_dual_barcode: "FILE    dual barcode pair file"
    char_output_path: "CHAR    output path"
    file_output_log: "FILE    output log file"
    char_mode_fastq: "CHAR    output mode, fastq or fasta [default fastq]"
    num_batch_size: "NUM     batch size [default 400M]"
    int_number_threads: "INT     number of threads [default 3]"
    int_target_length: "INT     target length for detecting barcode [default 150]"
    int_match_score: "INT     match score [default 2]"
    int_mismatch_score: "INT     mismatch score [default 2]"
    int_gap_open: "INT     gap open score [default 3]"
    int_gap_extension: "INT     gap extension score [default 1]"
    int_minimal_alignment: "INT     minimal alignment score for demultiplexing"
    ignore_parameter_estimation: "ignore parameter estimation"
    show_version_number: "show version number"
    input_dot_fast_q: ""
  }
  output {
    File out_stdout = stdout()
    File out_char_output_path = "${in_char_output_path}"
    File out_file_output_log = "${in_file_output_log}"
  }
}