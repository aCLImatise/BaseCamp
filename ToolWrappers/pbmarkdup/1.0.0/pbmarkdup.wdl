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
    String str
    String var_input
    String var_output
    File var_file
    String var_as
    String bam
  }
  command <<<
    pbmarkdup \
      ~{in_file_dot_bam_vertical_line_xml_vertical_line_f_a_vertical_line_fq_vertical_line_fof_n} \
      ~{outfile_dot_bam_vertical_line_xml_vertical_line_fado_tgz_vertical_line_fq_do_tgz} \
      ~{str} \
      ~{var_input} \
      ~{var_output} \
      ~{var_file} \
      ~{var_as} \
      ~{bam} \
      ~{if (cross_library) then "--cross-library" else ""} \
      ~{if (rmd_up) then "--rmdup" else ""} \
      ~{if (dup_file) then "--dup-file" else ""} \
      ~{if (clobber) then "--clobber" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
    str: ""
    var_input: ""
    var_output: ""
    var_file: ""
    var_as: ""
    bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}