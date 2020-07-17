version 1.0

task SsuEslSsdrawOutput postscript file name {
  input {
    String ssu_esl_ss_draw
    String msa_file
    String ss_postscript_template
    String output_postscript_file_name
  }
  command <<<
    ssu-esl-ssdraw output postscript file name \
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
}