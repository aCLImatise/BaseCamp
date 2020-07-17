version 1.0

task NGmerge {
  input {
    Boolean? file_input_forward
    Boolean? file_input_reverse
    Boolean? file_output_fastq
    Boolean? int_minimum_overlap_pairedend
    Boolean? float_mismatches_allow
    Boolean? use_mode_also
    Boolean? option_check_dovetailing
    Boolean? int_minimum_overlap_def
    Boolean? option_produce_read
    Boolean? file_log_file_stitching
    Boolean? file_fastq_files
    Boolean? file_log_file_dovetailed
    Boolean? file_log_file_formatted
    Boolean? z_slash_y
    Boolean? option_produce_outputs
    Boolean? file_use_given
    Boolean? use_method_merged
    Boolean? int_quality_offset
    Boolean? int_maximum_input
    Boolean? int_number_threads
    Boolean? option_print_updatescounts
  }
  command <<<
    NGmerge \
      ~{true="-1" false="" file_input_forward} \
      ~{true="-2" false="" file_input_reverse} \
      ~{true="-o" false="" file_output_fastq} \
      ~{true="-m" false="" int_minimum_overlap_pairedend} \
      ~{true="-p" false="" float_mismatches_allow} \
      ~{true="-a" false="" use_mode_also} \
      ~{true="-d" false="" option_check_dovetailing} \
      ~{true="-e" false="" int_minimum_overlap_def} \
      ~{true="-s" false="" option_produce_read} \
      ~{true="-l" false="" file_log_file_stitching} \
      ~{true="-f" false="" file_fastq_files} \
      ~{true="-c" false="" file_log_file_dovetailed} \
      ~{true="-j" false="" file_log_file_formatted} \
      ~{true="-z/-y" false="" z_slash_y} \
      ~{true="-i" false="" option_produce_outputs} \
      ~{true="-w" false="" file_use_given} \
      ~{true="-g" false="" use_method_merged} \
      ~{true="-q" false="" int_quality_offset} \
      ~{true="-u" false="" int_maximum_input} \
      ~{true="-n" false="" int_number_threads} \
      ~{true="-v" false="" option_print_updatescounts}
  >>>
  parameter_meta {
    file_input_forward: "<file>       Input FASTQ file with reads from forward direction"
    file_input_reverse: "<file>       Input FASTQ file with reads from reverse direction"
    file_output_fastq: "<file>       Output FASTQ file(s): - in 'stitch' mode (def.), the file of merged reads - in 'adapter-removal' mode (-a), the output files will be <file>_1.fastq and <file>_2.fastq"
    int_minimum_overlap_pairedend: "<int>        Minimum overlap of the paired-end reads (def. 20)"
    float_mismatches_allow: "<float>      Mismatches to allow in the overlapped region (a fraction of the overlap length; def. 0.10)"
    use_mode_also: "Use 'adapter-removal' mode (also sets -d option)"
    option_check_dovetailing: "Option to check for dovetailing (with 3' overhangs)"
    int_minimum_overlap_def: "<int>        Minimum overlap of dovetailed alignments (def. 50)"
    option_produce_read: "Option to produce shortest stitched read"
    file_log_file_stitching: "<file>       Log file for stitching results of each read pair"
    file_fastq_files: "<file>       FASTQ files for reads that failed stitching (output as <file>_1.fastq and <file>_2.fastq)"
    file_log_file_dovetailed: "<file>       Log file for dovetailed reads (adapter sequences)"
    file_log_file_formatted: "<file>       Log file for formatted alignments of merged reads"
    z_slash_y: "Option to gzip (-z) or not (-y) FASTQ output(s)"
    option_produce_outputs: "Option to produce interleaved FASTQ output(s)"
    file_use_given: "<file>       Use given error profile for merged qual scores"
    use_method_merged: "Use 'fastq-join' method for merged qual scores"
    int_quality_offset: "<int>        FASTQ quality offset (def. 33)"
    int_maximum_input: "<int>        Maximum input quality score (0-based; def. 40)"
    int_number_threads: "<int>        Number of threads to use (def. 1)"
    option_print_updatescounts: "Option to print status updates/counts to stderr"
  }
}