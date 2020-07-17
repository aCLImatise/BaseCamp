version 1.0

task EslSsdrawOutput postscript file name {
  input {
    String esl_ss_draw
    String msa_file
    String ss_postscript_template
    String output_postscript_file_name
  }
  command <<<
    esl-ssdraw output postscript file name \
      ~{esl_ss_draw} \
      ~{msa_file} \
      ~{ss_postscript_template} \
      ~{output_postscript_file_name}
  >>>
  parameter_meta {
    esl_ss_draw: ""
    msa_file: ""
    ss_postscript_template: ""
    output_postscript_file_name: ""
  }
}