version 1.0

task NGmerge {
  input {
    Boolean? file_file_forward
    Boolean? file_file_reverse
    File? file_output_fastq
    Boolean? int_overlap_reads
    Boolean? float_mismatches_allow
    Boolean? use_mode_also
    Boolean? option_check_overhangs
    Boolean? int_minimum_overlap
    Boolean? option_produce_read
    Boolean? file_log_file_stitching
    File? file_fastq_files
    Boolean? file_log_file_reads
    Boolean? file_log_file_formatted
    Boolean? option_gzip_z
    Boolean? option_produce_outputs
    Boolean? file_use_given
    Boolean? use_method_merged
    Boolean? int_offset_def
    Boolean? int_score_based
    Boolean? int_number_use
    Boolean? option_print_status
  }
  command <<<
    NGmerge \
      ~{if (file_file_forward) then "-1" else ""} \
      ~{if (file_file_reverse) then "-2" else ""} \
      ~{if (file_output_fastq) then "-o" else ""} \
      ~{if (int_overlap_reads) then "-m" else ""} \
      ~{if (float_mismatches_allow) then "-p" else ""} \
      ~{if (use_mode_also) then "-a" else ""} \
      ~{if (option_check_overhangs) then "-d" else ""} \
      ~{if (int_minimum_overlap) then "-e" else ""} \
      ~{if (option_produce_read) then "-s" else ""} \
      ~{if (file_log_file_stitching) then "-l" else ""} \
      ~{if (file_fastq_files) then "-f" else ""} \
      ~{if (file_log_file_reads) then "-c" else ""} \
      ~{if (file_log_file_formatted) then "-j" else ""} \
      ~{if (option_gzip_z) then "-z" else ""} \
      ~{if (option_produce_outputs) then "-i" else ""} \
      ~{if (file_use_given) then "-w" else ""} \
      ~{if (use_method_merged) then "-g" else ""} \
      ~{if (int_offset_def) then "-q" else ""} \
      ~{if (int_score_based) then "-u" else ""} \
      ~{if (int_number_use) then "-n" else ""} \
      ~{if (option_print_status) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_file_forward: "<file>       Input FASTQ file with reads from forward direction"
    file_file_reverse: "<file>       Input FASTQ file with reads from reverse direction"
    file_output_fastq: "<file>       Output FASTQ file(s):\\n- in 'stitch' mode (def.), the file of merged reads\\n- in 'adapter-removal' mode (-a), the output files\\nwill be <file>_1.fastq and <file>_2.fastq"
    int_overlap_reads: "<int>        Minimum overlap of the paired-end reads (def. 20)"
    float_mismatches_allow: "<float>      Mismatches to allow in the overlapped region\\n(a fraction of the overlap length; def. 0.10)"
    use_mode_also: "Use 'adapter-removal' mode (also sets -d option)"
    option_check_overhangs: "Option to check for dovetailing (with 3' overhangs)"
    int_minimum_overlap: "<int>        Minimum overlap of dovetailed alignments (def. 50)"
    option_produce_read: "Option to produce shortest stitched read"
    file_log_file_stitching: "<file>       Log file for stitching results of each read pair"
    file_fastq_files: "<file>       FASTQ files for reads that failed stitching\\n(output as <file>_1.fastq and <file>_2.fastq)"
    file_log_file_reads: "<file>       Log file for dovetailed reads (adapter sequences)"
    file_log_file_formatted: "<file>       Log file for formatted alignments of merged reads"
    option_gzip_z: "Option to gzip (-z) or not (-y) FASTQ output(s)"
    option_produce_outputs: "Option to produce interleaved FASTQ output(s)"
    file_use_given: "<file>       Use given error profile for merged qual scores"
    use_method_merged: "Use 'fastq-join' method for merged qual scores"
    int_offset_def: "<int>        FASTQ quality offset (def. 33)"
    int_score_based: "<int>        Maximum input quality score (0-based; def. 40)"
    int_number_use: "<int>        Number of threads to use (def. 1)"
    option_print_status: "Option to print status updates/counts to stderr"
  }
  output {
    File out_stdout = stdout()
    File out_file_output_fastq = "${in_file_output_fastq}"
    File out_file_fastq_files = "${in_file_fastq_files}"
  }
}