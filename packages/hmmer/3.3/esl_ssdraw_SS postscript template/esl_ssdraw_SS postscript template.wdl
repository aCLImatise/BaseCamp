version 1.0

task EslssdrawSSpostscripttemplate {
  input {
    String esl_ss_draw
    String msa_file
    String ss_postscript_template
    File output_postscript_file_name
  }
  command <<<
    esl_ssdraw SS_postscript_template \
      ~{esl_ss_draw} \
      ~{msa_file} \
      ~{ss_postscript_template} \
      ~{output_postscript_file_name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    esl_ss_draw: ""
    msa_file: ""
    ss_postscript_template: ""
    output_postscript_file_name: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_postscript_file_name = "${in_output_postscript_file_name}"
  }
}