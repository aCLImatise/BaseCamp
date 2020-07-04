version 1.0

task Pbmarkdup {
  input {
    Boolean? cross_library
    Boolean? rmd_up
    Boolean? dup_file
    Boolean? clobber
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String in_file_dot_bam_vertical_line_xml_vertical_line_f_a_vertical_line_fq_vertical_line_fof_n
    String outfile_dot_bam_vertical_line_xml_vertical_line_fado_tgz_vertical_line_fq_do_tgz
  }
  command <<<
    pbmarkdup \
      ~{in_file_dot_bam_vertical_line_xml_vertical_line_f_a_vertical_line_fq_vertical_line_fof_n} \
      ~{outfile_dot_bam_vertical_line_xml_vertical_line_fado_tgz_vertical_line_fq_do_tgz} \
      ~{true="--cross-library" false="" cross_library} \
      ~{true="--rmdup" false="" rmd_up} \
      ~{true="--dup-file" false="" dup_file} \
      ~{true="--clobber" false="" clobber} \
      ~{true="--num-threads" false="" num_threads} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--log-file" false="" log_file}
  >>>
  parameter_meta {
    cross_library: "Identify duplicates across sequencing libraries (LB tag in read group)."
    rmd_up: "Exclude duplicates from OUTFILE. Redundant when --dup-file is provided."
    dup_file: "STR   Write duplicates to this file instead of OUTFILE."
    clobber: "Overwrite OUTFILE if it exists."
    num_threads: "INT   Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE  Log to a file, instead of stderr."
    in_file_dot_bam_vertical_line_xml_vertical_line_f_a_vertical_line_fq_vertical_line_fof_n: ""
    outfile_dot_bam_vertical_line_xml_vertical_line_fado_tgz_vertical_line_fq_do_tgz: ""
  }
}