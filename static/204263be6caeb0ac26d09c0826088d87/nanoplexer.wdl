version 1.0

task Nanoplexer {
  input {
    Boolean? file__barcode_file
    Boolean? file_dual_barcode_file
    Boolean? char_output_path
    Boolean? file_output_file
    Boolean? char_output_mode
    Boolean? num_batch_size
    Boolean? int_number_threads
    Boolean? int_target_length
    Boolean? int_match_score
    Boolean? int_mismatch_score
    Boolean? int_gap_score
    Boolean? int_extension_score
    Boolean? int_minimal_alignment
    Boolean? ignore_parameter_estimation
    Boolean? show_version_number
    String input_dot_fast_q
  }
  command <<<
    nanoplexer \
      ~{input_dot_fast_q} \
      ~{true="-b" false="" file__barcode_file} \
      ~{true="-d" false="" file_dual_barcode_file} \
      ~{true="-p" false="" char_output_path} \
      ~{true="-l" false="" file_output_file} \
      ~{true="-M" false="" char_output_mode} \
      ~{true="-B" false="" num_batch_size} \
      ~{true="-t" false="" int_number_threads} \
      ~{true="-L" false="" int_target_length} \
      ~{true="-m" false="" int_match_score} \
      ~{true="-x" false="" int_mismatch_score} \
      ~{true="-o" false="" int_gap_score} \
      ~{true="-e" false="" int_extension_score} \
      ~{true="-s" false="" int_minimal_alignment} \
      ~{true="-i" false="" ignore_parameter_estimation} \
      ~{true="-v" false="" show_version_number}
  >>>
  parameter_meta {
    file__barcode_file: "FILE    barcode file"
    file_dual_barcode_file: "FILE    dual barcode pair file"
    char_output_path: "CHAR    output path"
    file_output_file: "FILE    output log file"
    char_output_mode: "CHAR    output mode, fastq or fasta [default fastq]"
    num_batch_size: "NUM     batch size [default 400M]"
    int_number_threads: "INT     number of threads [default 3]"
    int_target_length: "INT     target length for detecting barcode [default 150]"
    int_match_score: "INT     match score [default 2]"
    int_mismatch_score: "INT     mismatch score [default 2]"
    int_gap_score: "INT     gap open score [default 3]"
    int_extension_score: "INT     gap extension score [default 1]"
    int_minimal_alignment: "INT     minimal alignment score for demultiplexing"
    ignore_parameter_estimation: "ignore parameter estimation"
    show_version_number: "show version number"
    input_dot_fast_q: ""
  }
}