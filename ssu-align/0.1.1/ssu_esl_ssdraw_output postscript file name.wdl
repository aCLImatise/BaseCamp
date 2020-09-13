version 1.0

task SsueslssdrawOutputpostscriptfilename {
  input {
    String ssu_esl_ss_draw
    String msa_file
    String ss_postscript_template
    File output_postscript_file_name
  }
  command <<<
    ssu_esl_ssdraw output_postscript_file_name \
      ~{ssu_esl_ss_draw} \
      ~{msa_file} \
      ~{ss_postscript_template} \
      ~{output_postscript_file_name}
  >>>
  parameter_meta {
    ssu_esl_ss_draw: ""
    msa_file: ""
    ss_postscript_template: ""
    output_postscript_file_name: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_postscript_file_name = "${in_output_postscript_file_name}"
  }
}