version 1.0

task EslssdrawMsafile {
  input {
    String ss_postscript_template
    File output_postscript_file_name
  }
  command <<<
    esl_ssdraw msafile \
      ~{ss_postscript_template} \
      ~{output_postscript_file_name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ss_postscript_template: ""
    output_postscript_file_name: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_postscript_file_name = "${in_output_postscript_file_name}"
  }
}